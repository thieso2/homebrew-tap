class Claudewatch < Formula
  desc "TUI monitor for Claude Code CLI instances with session history and message analytics"
  homepage "https://github.com/thieso2/claudewatch"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thieso2/claudewatch/releases/download/v0.1/claudewatch-darwin-arm64-v0.1.tar.gz"
      sha256 "68d2a2d9e309763563154f816e5112046ac06e960e3a4ee46addd51cc965e550"
    end
    on_intel do
      url "https://github.com/thieso2/claudewatch/releases/download/v0.1/claudewatch-darwin-amd64-v0.1.tar.gz"
      sha256 "0bc4217293a94a6883acbc6844e683232b11ef6a94cf0c329aa9c4b68fbf1aee"
    end
  end

  def install
    bin.install "claudewatch"
  end

  test do
    system "#{bin}/claudewatch", "--help"
  end
end
