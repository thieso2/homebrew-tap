class Cio < Formula
  desc "Cloud-IO - CLI tool for Google Cloud Storage and BigQuery"
  homepage "https://github.com/thieso2/cio"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thieso2/cio/releases/download/v0.1.0/cio-darwin-arm64"
      sha256 "placeholder_darwin_arm64"
    end
    on_intel do
      url "https://github.com/thieso2/cio/releases/download/v0.1.0/cio-darwin-amd64"
      sha256 "placeholder_darwin_amd64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thieso2/cio/releases/download/v0.1.0/cio-linux-arm64"
      sha256 "placeholder_linux_arm64"
    end
    on_intel do
      url "https://github.com/thieso2/cio/releases/download/v0.1.0/cio-linux-amd64"
      sha256 "placeholder_linux_amd64"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "cio-darwin-arm64" => "cio"
      else
        bin.install "cio-darwin-amd64" => "cio"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "cio-linux-arm64" => "cio"
      else
        bin.install "cio-linux-amd64" => "cio"
      end
    end
  end

  test do
    system "#{bin}/cio", "--version"
  end
end
