cask "moremaidapp" do
  version "0.1.0"
  sha256 "0ff64f45e697fb9e07171085f69bee92f4c209b0a283eb9c1d7b88a214694612"

  url "https://github.com/thieso2/MoremaidApp/releases/download/v#{version}/Moremaid-0.1.0-macOS.zip",
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
