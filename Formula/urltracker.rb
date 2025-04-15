class Urltracker < Formula
  desc "Track redirects and view full redirect chains from a URL"
  homepage "https://github.com/nalmeida/urltracker"
  url "https://github.com/nalmeida/urltracker/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "0e85c15019e946abb5100fc420f2d47a1be858df497ad8aac77bfaa290f4b830"

  license "MIT"

  depends_on "curl" => "8.7.1"

  def install
    bin.install "urltracker" => "urltracker"
  end

  test do
    system "#{bin}/urltracker", "--version"
  end
end