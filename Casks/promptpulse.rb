cask "promptpulse" do
  version "0.4.4"
  sha256 "6ef0fce0cce1d08de5b14ae9df102e7fb042abca8801a2ec809a9541c3c648f5"

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
