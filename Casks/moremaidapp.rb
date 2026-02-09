cask "moremaidapp" do
  version "0.2.7"
  sha256 "3cce80e16b2d171255f2d69dfaaf112435d9e6a2c2c8acf661612616367ce4f6"

  url "https://github.com/thieso2/MoremaidApp/releases/download/v#{version}/Moremaid-0.2.7-macOS.zip",
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
