class Envpocket < Formula
  desc "Secure environment file storage in macOS Keychain"
  homepage "https://github.com/thieso2/envpocket"
  url "https://github.com/thieso2/envpocket/releases/download/v0.6.0/envpocket-macos.tar.gz"
  sha256 "6fc4994680ac9fce400c327d76742e67c79fb69c1a2e73133fbfc45d9d605093"
  version "0.6.0"
  license "MIT"

  def install
    bin.install "envpocket"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/envpocket --version")
  end
end
