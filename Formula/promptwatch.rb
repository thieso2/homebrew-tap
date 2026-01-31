class Promptwatch < Formula
  desc "TUI monitor for code editor CLI instances with session history and message analytics"
  homepage "https://github.com/thieso2/promptwatch"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thieso2/promptwatch/releases/download/v0.1.0/promptwatch-darwin-arm64-v0.1.tar.gz"
      sha256 "2b81abf491576e5e4c3586fa57257dd11e3460ded0aa5ecb9c85862c4f99b600"
    end
    on_intel do
      url "https://github.com/thieso2/promptwatch/releases/download/v0.1.0/promptwatch-darwin-amd64-v0.1.tar.gz"
      sha256 "e143ade0478d7f642209c1c2efb82e99eb5d8d5bc299080e60bd93a301d63162"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thieso2/promptwatch/releases/download/v0.1.0/promptwatch-linux-arm64-v0.1.tar.gz"
      sha256 "c8e0a4ef04999a5863fbc38a3212a5388c7c8ac643aac0ca8a4bfb93aad1cf9f"
    end
    on_intel do
      url "https://github.com/thieso2/promptwatch/releases/download/v0.1.0/promptwatch-linux-amd64-v0.1.tar.gz"
      sha256 "9e746fe2e8d576e21d3a3cadd0d2f65263502d575ba0caa34c67e9c78b07b6c9"
    end
  end

  def install
    bin.install Dir["promptwatch-*"].first => "promptwatch"
  end

  test do
    system "#{bin}/promptwatch", "--help"
  end
end
