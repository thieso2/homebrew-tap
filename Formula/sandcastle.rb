# typed: false
# frozen_string_literal: true

class Sandcastle < Formula
  desc "CLI for Sandcastle, a self-hosted shared Docker sandbox platform"
  homepage "https://github.com/thieso2/Sandcastle"
  version "0.1.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/thieso2/Sandcastle/releases/download/v0.1.14/sandcastle-darwin-amd64.tar.gz"
      sha256 "b032fcad156a9357c40eea7fa7878355ef4cd9f1e2e0bf106d0bab7ee609f4e9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/thieso2/Sandcastle/releases/download/v0.1.14/sandcastle-darwin-arm64.tar.gz"
      sha256 "bd30e66abcf87e47a4932473439a81542a2704bce8656db6e9877bc192c6c1bc"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/thieso2/Sandcastle/releases/download/v0.1.14/sandcastle-linux-amd64.tar.gz"
      sha256 "4a5ae9fb600e7c43981508eca76a9d4ae7e8fde2007749d7b398a3b37e3fd22a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/thieso2/Sandcastle/releases/download/v0.1.14/sandcastle-linux-arm64.tar.gz"
      sha256 "3d9ec0adcc980d6c707f3fa3a0331efb6a93b5f7ec527c016db464dcb291aa32"
    end
  end

  def install
    bin.install "sandcastle"
  end

  test do
    system "#{bin}/sandcastle", "version"
  end
end
