cask "promptpulse" do
  version "0.3.3"
  sha256 "4f086f82f7511bedef7822e0abddf640b1ea041bc1613c1c546b78ab423ebcfc"

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
