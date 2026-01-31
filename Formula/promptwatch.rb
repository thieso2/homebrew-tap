class Promptwatch < Formula
  desc "TUI monitor for code editor CLI instances with session history and message analytics"
  homepage "https://github.com/thieso2/promptwatch"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thieso2/promptwatch/releases/download/v0.1.1/claudewatch-darwin-arm64-v0.1.1.tar.gz"
      sha256 "4bd7cffebab1695932428bdc781074c084a9b824ec0524a73296ff7830e1908e"
    end
    on_intel do
      url "https://github.com/thieso2/promptwatch/releases/download/v0.1.1/claudewatch-darwin-amd64-v0.1.1.tar.gz"
      sha256 "217b7d6f2ff35773c040761f64348cce5cf86bbb87c8dc70a493d8e1f310332d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thieso2/promptwatch/releases/download/v0.1.1/claudewatch-linux-arm64-v0.1.1.tar.gz"
      sha256 "f8ab263ee1c1ab4ff943e75c1950a0f2b3e79fb0d7c543b3969d29e4a775de06"
    end
    on_intel do
      url "https://github.com/thieso2/promptwatch/releases/download/v0.1.1/claudewatch-linux-amd64-v0.1.1.tar.gz"
      sha256 "33bb88d1a55d4406b076272b808ccb04f5c2f07eaf14e7c9f9db4b8db39612fe"
    end
  end

  def install
    bin.install Dir["claudewatch-*"].first => "promptwatch"
  end

  test do
    system "#{bin}/promptwatch", "--help"
  end
end
