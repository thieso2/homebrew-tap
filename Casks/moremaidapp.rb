cask "moremaidapp" do
  version "0.5.7"
  sha256 "29968a6576d41f7865eef477d4b130b1cf5211fbfbd8c3f799545cc263b76063"

  url "https://github.com/thieso2/MoremaidApp/releases/download/v#{version}/Moremaid-0.5.7-macOS.zip",
      verified: "github.com/thieso2/MoremaidApp/"

  name "Moremaid"
  desc "Markdown viewer for macOS"
  homepage "https://github.com/thieso2/MoremaidApp"

  depends_on macos: ">= :tahoe"

  app "Moremaid.app"

  zap trash: [
    "~/Library/Preferences/de.tmp8.moremaid.plist",
  ]
end
