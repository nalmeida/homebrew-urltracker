class Urltracker < Formula
  desc "Track redirects and view full redirect chains from a URL"
  homepage "https://github.com/nalmeida/urltracker"
  url "https://github.com/nalmeida/urltracker/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "f67c7c4f8667fb8341258aaecbbe72e7fefd944ced1afb0671dd0947b39f23a2"

  license "MIT"

  depends_on "curl" => "8.7.1"

  def install
    bin.install "urltracker" => "urltracker"
  end

  test do
    system "#{bin}/urltracker", "--version"
  end
end