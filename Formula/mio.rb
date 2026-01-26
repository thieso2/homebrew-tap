class Mio < Formula
  desc "MySQL CLI with multi-server support and advanced table discovery"
  homepage "https://github.com/thieso2/mio"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thieso2/mio/releases/download/v0.3.0/mio-darwin-arm64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    on_intel do
      url "https://github.com/thieso2/mio/releases/download/v0.3.0/mio-darwin-amd64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thieso2/mio/releases/download/v0.3.0/mio-linux-arm64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    on_intel do
      url "https://github.com/thieso2/mio/releases/download/v0.3.0/mio-linux-amd64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
