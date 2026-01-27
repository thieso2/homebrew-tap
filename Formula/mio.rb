class Mio < Formula
  desc "MySQL CLI with multi-server support and advanced table discovery"
  homepage "https://github.com/thieso2/mio"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thieso2/mio/releases/download/v0.6.1/mio_0.6.1_Darwin_arm64.tar.gz"
      sha256 "6da1b438a640fb5f34a29801b11421078666eea98cc1da35d4bf6fd3719b99ae"
    end
    on_intel do
      url "https://github.com/thieso2/mio/releases/download/v0.6.1/mio_0.6.1_Darwin_x86_64.tar.gz"
      sha256 "1d668b326d8a9b6dea6762e1ea6befb5e7fb9d74a20ab8728d52796298e72811"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thieso2/mio/releases/download/v0.6.1/mio_0.6.1_Linux_arm64.tar.gz"
      sha256 "e6c8c3fa20cf5f4a4fffbf330e30d6e62c108280eaf9b47982397b89ea756ef6"
    end
    on_intel do
      url "https://github.com/thieso2/mio/releases/download/v0.6.1/mio_0.6.1_Linux_x86_64.tar.gz"
      sha256 "441a485a7c908cb211b6302682bd1fc4a42408d889fb9c53e37b1d974ff47007"
    end
  end

  def install
    bin.install "mio"
  end

  test do
    system "#{bin}/mio", "--help"
  end
end
