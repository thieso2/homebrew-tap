cask "moremaidapp" do
  version "0.2.6"
  sha256 "610cfd0043faf0881e219368cd556e3cbb895a712c6dee739c34d4b87ba9e754"

  url "https://github.com/thieso2/MoremaidApp/releases/download/v#{version}/Moremaid-0.2.6-macOS.zip",
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
