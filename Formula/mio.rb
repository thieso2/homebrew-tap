class Mio < Formula
  desc "MySQL CLI with multi-server support and advanced table discovery"
  homepage "https://github.com/thieso2/mio"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thieso2/mio/releases/download/v0.6.2/mio_0.6.2_Darwin_arm64.tar.gz"
      sha256 "0e83ddbb3c9d5919ac0ba7db001c04aceb4a622f9adb2fd9abb23c3c2223d5de"
    end
    on_intel do
      url "https://github.com/thieso2/mio/releases/download/v0.6.2/mio_0.6.2_Darwin_x86_64.tar.gz"
      sha256 "fbfe7e21f964fabdf1a0007ba5b3029855c5306a03b3e83a2f863dda94829e1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thieso2/mio/releases/download/v0.6.2/mio_0.6.2_Linux_arm64.tar.gz"
      sha256 "ebc25099546219df610e8004d47ac7131d4e688ee766ba755d6225765b9bd85f"
    end
    on_intel do
      url "https://github.com/thieso2/mio/releases/download/v0.6.2/mio_0.6.2_Linux_x86_64.tar.gz"
      sha256 "aaf95be8c9829f63142a4940b973c4c9763201bd12bd89631666b84d08061f3d"
    end
  end

  def install
    bin.install "mio"
  end

  test do
    system "#{bin}/mio", "--help"
  end
end
