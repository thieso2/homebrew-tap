class Mio < Formula
  desc "MySQL CLI with multi-server support and advanced table discovery"
  homepage "https://github.com/thieso2/mio"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thieso2/mio/releases/download/v0.5.0/mio_0.5.0_Darwin_arm64.tar.gz"
      sha256 "90d37b494365fd7d6da58ab7ae99a9cadfdb223c4b10530a574c73528cf02e92"
    end
    on_intel do
      url "https://github.com/thieso2/mio/releases/download/v0.5.0/mio_0.5.0_Darwin_x86_64.tar.gz"
      sha256 "683d3b1047152899af7322aded6e6f444861fdc249919a4a425be0fd8af6f1e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thieso2/mio/releases/download/v0.5.0/mio_0.5.0_Linux_arm64.tar.gz"
      sha256 "cf91c1637da57a2d1fb77c8a96a7388a1bae1ed5629b4d7141e78d42b34ed670"
    end
    on_intel do
      url "https://github.com/thieso2/mio/releases/download/v0.5.0/mio_0.5.0_Linux_x86_64.tar.gz"
      sha256 "230ff49f5ba563ff08fd5b42708d13a37ebf4513a14c71ab784e93ad3dee8526"
    end
  end

  def install
    bin.install "mio"
  end

  test do
    system "#{bin}/mio", "--help"
  end
end
