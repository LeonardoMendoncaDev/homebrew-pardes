# Homebrew formula — pardes-cli
#
# Esta é a fórmula manual para a versão 0.0.1, prepada antes de termos
# o GoReleaser ligado a um tap automático. Vai num repo separado:
#
#   github.com/LeonardoMendoncaDev/homebrew-pardes
#   └── Formula/
#       └── pardes-cli.rb     ← este ficheiro
#
# Depois de o tap estar publicado, o utilizador instala com:
#
#   brew install LeonardoMendoncaDev/pardes/pardes-cli
#
# A partir da v0.0.2 em diante, o GoReleaser actualiza esta fórmula
# automaticamente a cada release tag (ver .goreleaser.yaml).

class PardesCli < Formula
  desc "PARDES CLI — método PARDES como coreógrafo do teu agente de IA"
  homepage "https://www.pardes.pro"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LeonardoMendoncaDev/pardes-cli/releases/download/v0.0.1/pardes-cli_0.0.1_darwin_arm64.tar.gz"
      sha256 "2288c3d2f970f8a05ee2cf6babeb82681f29a5a979d103f51346c0c461702a9f"
    end
    on_intel do
      url "https://github.com/LeonardoMendoncaDev/pardes-cli/releases/download/v0.0.1/pardes-cli_0.0.1_darwin_amd64.tar.gz"
      sha256 "f246ec72479673dd2580e63eab8eb495336ce1f439660899529b04e8744921aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LeonardoMendoncaDev/pardes-cli/releases/download/v0.0.1/pardes-cli_0.0.1_linux_arm64.tar.gz"
      sha256 "02f637beaefdc168322565d7d1d3ab48d39d62ee4574c8a9d83aa128d38fbe1f"
    end
    on_intel do
      url "https://github.com/LeonardoMendoncaDev/pardes-cli/releases/download/v0.0.1/pardes-cli_0.0.1_linux_amd64.tar.gz"
      sha256 "2e7506cc9a0b25dc4660c3716600ca2c4111cb19415517d5a057e87f14f1b2d9"
    end
  end

  def install
    bin.install "pardes"
  end

  test do
    assert_match "PARDES", shell_output("#{bin}/pardes --help")
  end
end
