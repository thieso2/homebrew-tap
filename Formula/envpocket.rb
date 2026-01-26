class Envpocket < Formula
  desc "Securely store environment files in macOS Keychain with versioning"
  homepage "https://github.com/thieso2/envpocket"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thieso2/envpocket/releases/download/v0.1.0/envpocket-darwin-arm64"
      sha256 "placeholder_darwin_arm64"
    end
    on_intel do
      url "https://github.com/thieso2/envpocket/releases/download/v0.1.0/envpocket-darwin-amd64"
      sha256 "placeholder_darwin_amd64"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "envpocket-darwin-arm64" => "envpocket"
      else
        bin.install "envpocket-darwin-amd64" => "envpocket"
      end
    end
  end

  test do
    system "#{bin}/envpocket", "--version"
  end
end
