class Mio < Formula
  desc "MySQL CLI with multi-server support and advanced table discovery"
  homepage "https://github.com/thieso2/mio"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thieso2/mio/releases/download/v0.4.0/mio_0.4.0_Darwin_arm64.tar.gz"
      sha256 "99f046cdf7d5d29cc8b356df22c05f47aa4a2610762c5a89b02502f2b4b2db0b"
    end
    on_intel do
      url "https://github.com/thieso2/mio/releases/download/v0.4.0/mio_0.4.0_Darwin_x86_64.tar.gz"
      sha256 "8a9293a5902f6a576afbb5cd0e6835f61a616ff75cb754185844003bc6ab8262"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thieso2/mio/releases/download/v0.4.0/mio_0.4.0_Linux_arm64.tar.gz"
      sha256 "21ea6dc3292ccfb7114125c91bfb255acc5b557b730e398b5a6d5cd15192800d"
    end
    on_intel do
      url "https://github.com/thieso2/mio/releases/download/v0.4.0/mio_0.4.0_Linux_x86_64.tar.gz"
      sha256 "f1305d41ab8b94ebb7580f84f3546f70f63a2965661bf1d95724390af9bc2e95"
    end
  end

  def install
    bin.install "mio"
  end

  test do
    system "#{bin}/mio", "--help"
  end
end
