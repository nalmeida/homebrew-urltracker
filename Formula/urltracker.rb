class Urltracker < Formula
  desc "Track redirects and view full redirect chains from a URL"
  homepage "https://github.com/nalmeida/urltracker"
  url "https://github.com/nalmeida/urltracker/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "2980f865d0f749bfe9d6abcbb73f7d26347eefedf5617899a269cc7d36f0ccbf"
  license "MIT"

  depends_on "curl" => "8.7.1"

  def install
    bin.install "urltracker.sh" => "urltracker"
    chmod 0755, bin/"urltracker"
  end

  test do
    assert_match "urltracker", shell_output("#{bin}/urltracker --help")
  end
end