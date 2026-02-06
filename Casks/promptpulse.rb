cask "promptpulse" do
  version "0.3.5"
  sha256 "2d50912977889961c8d1769ce186a42c9ee854dfb7498ee267df3e544a0aadcf"

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
