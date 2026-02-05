cask "promptpulse" do
  version "0.5.0"
  sha256 "9363dadeeeb3bbab296257d98608c4a4ccad0e4d67f7a776b3ab78daae23f85f"

  url "https://github.com/thieso2/PromptPulse/releases/download/v#{version}/PromptPulse-#{version}-macOS.zip"
  name "PromptPulse"
  desc "macOS menubar app for monitoring Claude Code CLI sessions"
  homepage "https://github.com/thieso2/PromptPulse"

  depends_on macos: ">= :sequoia"

  app "PromptPulse.app"

  zap trash: [
    "~/Library/Preferences/dev.thies.PromptPulse.plist",
    "~/Library/Application Support/PromptPulse",
  ]
end
