class Urltracker < Formula
  desc "Track redirects and view full redirect chains from a URL"
  homepage "https://github.com/nalmeida/urltracker"
  url "https://github.com/nalmeida/urltracker/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "2980f865d0f749bfe9d6abcbb73f7d26347eefedf5617899a269cc7d36f0ccbf"
  license "MIT"

  depends_on "curl" => "8.7.1"

  def install
    # Copy o arquivo principal para o diretório bin com o nome desejado
    bin.install "urltracker" if File.exist?("urltracker")
    bin.install "urltracker.sh" => "urltracker" if File.exist?("urltracker.sh")
    
    # Também tentar encontrar o arquivo no diretório raiz
    if !File.exist?("urltracker") && !File.exist?("urltracker.sh")
      # Lista todos os arquivos no diretório para depuração
      ohai "Files in directory:"
      system "ls", "-la"
      
      # Tenta instalar qualquer script shell que pareça ser o principal
      scripts = Dir["*.sh"]
      bin.install scripts.first => "urltracker" unless scripts.empty?
    end
    
    # Garante que o arquivo seja executável
    chmod 0755, bin/"urltracker" if File.exist?(bin/"urltracker")
  end

  test do
    assert_match "urltracker", shell_output("#{bin}/urltracker --help", [0, 1])
  end
end