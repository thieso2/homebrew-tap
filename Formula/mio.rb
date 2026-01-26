class Mio < Formula
  desc "MySQL CLI with multi-server support and advanced table discovery"
  homepage "https://github.com/thieso2/mio"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thieso2/mio/releases/download/v0.3.0/mio_0.3.0_Darwin_arm64.tar.gz"
      sha256 "2153e946cd6752ecaa92182f66d27f0c69ac98e9648d581d212226a9b2a74ce4"
    end
    on_intel do
      url "https://github.com/thieso2/mio/releases/download/v0.3.0/mio_0.3.0_Darwin_x86_64.tar.gz"
      sha256 "d4cf2fc60209302af8ab5933bbbee898a7599108235c12aad1c884174ab4626a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thieso2/mio/releases/download/v0.3.0/mio_0.3.0_Linux_arm64.tar.gz"
      sha256 "cfd2daf1b372f441ad41939deb09192b638f63394c6b6a421444d7dfb119e578"
    end
    on_intel do
      url "https://github.com/thieso2/mio/releases/download/v0.3.0/mio_0.3.0_Linux_x86_64.tar.gz"
      sha256 "212d60b6927c422d633f98c6015b07873a35eea705ae41b5bd84e607d0bad190"
    end
  end

  def install
    bin.install "mio"
  end

  test do
    system "#{bin}/mio", "--version"
  end
end
