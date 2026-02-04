cask "promptpulse" do
  version "0.4.2"
  sha256 "324d5586bc783d8ab25b9f8a878b3cad1b33cd120a83928add4e827f3c6e3391"

  url "https://github.com/thieso2/PromptPulse/releases/download/v#{version}/PromptPulse-#{version}-macOS.zip"
  name "PromptPulse"
  desc "macOS menubar app for monitoring Claude Code CLI sessions"
  homepage "https://github.com/thieso2/PromptPulse"

  depends_on macos: ">= :sequoia"

  app "PromptPulse.app"

  zap trash: [
    "~/Library/Preferences/com.promptpulse.app.plist",
  ]
end
