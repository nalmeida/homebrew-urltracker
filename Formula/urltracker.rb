class Urltracker < Formula
  desc "Track redirects and view full redirect chains from a URL"
  homepage "https://github.com/nalmeida/urltracker"
  url "https://github.com/nalmeida/urltracker/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "32a4742e0d205d9dcb23bc22dca1ac3e49c9bacffab30e9176ffd05aa5e0e1fc"

  license "MIT"

  depends_on "curl" => "8.7.1"

  def install
    bin.install "urltracker" => "urltracker"
  end

  test do
    system "#{bin}/urltracker", "--version"
  end
end