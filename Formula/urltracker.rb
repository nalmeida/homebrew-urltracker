class Urltracker < Formula
  desc "Track redirects and view full redirect chains from a URL"
  homepage "https://github.com/nalmeida/urltracker"
  url "https://github.com/nalmeida/urltracker/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "53bd088ad97d15207f949cd079ca466236bf3b4014837bda306334c50539c30f"
  license "MIT"

  depends_on "curl" => "8.7.1"

  def install
    bin.install "urltracker" => "urltracker"
  end

  test do
    system "#{bin}/urltracker", "--version"
  end
end