class Urltracker < Formula
  desc "Track redirects and view full redirect chains from a URL"
  homepage "https://github.com/nalmeida/urltracker"
  url "https://github.com/nalmeida/urltracker/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "2ca60c6b876cad25fd26893877d7c8901f75ea31d24e5f44c8c7e00c91f82ded"

  license "MIT"

  depends_on "curl" => "8.7.1"

  def install
    bin.install "urltracker" => "urltracker"
  end

  test do
    system "#{bin}/urltracker", "--version"
  end
end