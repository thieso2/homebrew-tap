cask "moremaidapp" do
  version "0.2.2"
  sha256 "895ae76a81340f6f85bf1c19a81a9ec6a825fbe7d56041a57b0a222ae43c2911"

  url "https://github.com/thieso2/MoremaidApp/releases/download/v#{version}/Moremaid-0.2.2-macOS.zip",
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
