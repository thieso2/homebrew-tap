class Cio < Formula
  desc "Cloud-IO - CLI tool for Google Cloud Storage and BigQuery"
  homepage "https://github.com/thieso2/cio"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thieso2/cio/releases/download/v0.0.4/cio_0.0.4_Darwin_arm64.tar.gz"
      sha256 "cc98ce41d26137f805ef3e4c54c23f81b3ed0a2aefe4f9a39e565a0742557acc"
    end
    on_intel do
      url "https://github.com/thieso2/cio/releases/download/v0.0.4/cio_0.0.4_Darwin_x86_64.tar.gz"
      sha256 "79a2d126f5ba263da807dc14d4bae647b243d618d23f9fa7af7e60e023b55bbd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thieso2/cio/releases/download/v0.0.4/cio_0.0.4_Linux_arm64.tar.gz"
      sha256 "a9a3d055587ae810caae1f303b3c43e3c60d0b04c82a858aff6cb194b6233737"
    end
    on_intel do
      url "https://github.com/thieso2/cio/releases/download/v0.0.4/cio_0.0.4_Linux_x86_64.tar.gz"
      sha256 "53d0febcdaa4af6dea35a6605e31681ad904bebe2a82348e699b72472707c625"
    end
  end

  def install
    bin.install "cio"
  end

  test do
    system "#{bin}/cio", "--version"
  end
end
