cask "promptpulse" do
  version "0.3.2"
  sha256 "8476961fef52aee5ed4444a825668a61c5fd5b29ee6dc425d6a5dd36186a243d"

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
