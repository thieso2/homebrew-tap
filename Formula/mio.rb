class Mio < Formula
  desc "MySQL CLI with multi-server support and advanced table discovery"
  homepage "https://github.com/thieso2/mio"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thieso2/mio/releases/download/v0.1.0/mio-darwin-arm64"
      sha256 "placeholder_darwin_arm64"
    end
    on_intel do
      url "https://github.com/thieso2/mio/releases/download/v0.1.0/mio-darwin-amd64"
      sha256 "placeholder_darwin_amd64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thieso2/mio/releases/download/v0.1.0/mio-linux-arm64"
      sha256 "placeholder_linux_arm64"
    end
    on_intel do
      url "https://github.com/thieso2/mio/releases/download/v0.1.0/mio-linux-amd64"
      sha256 "placeholder_linux_amd64"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "mio-darwin-arm64" => "mio"
      else
        bin.install "mio-darwin-amd64" => "mio"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "mio-linux-arm64" => "mio"
      else
        bin.install "mio-linux-amd64" => "mio"
      end
    end
  end

  test do
    system "#{bin}/mio", "--version"
  end
end
