class Envpocket < Formula
  desc "Secure environment file storage in macOS Keychain"
  homepage "https://github.com/thieso2/envpocket"
  url "https://github.com/thieso2/envpocket/releases/download/v0.6.1/envpocket-macos.tar.gz"
  sha256 "70a8dfc2e82c22cd988b63122a43e6e439b63cfc446edb9a7c8c3c50100450c3"
  version "0.6.1"
  license "MIT"

  def install
    bin.install "envpocket"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/envpocket --version")
  end
end
