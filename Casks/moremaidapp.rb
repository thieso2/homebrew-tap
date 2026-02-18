cask "moremaidapp" do
  version "0.4.0"
  sha256 "ba9d0e08b064341de0b13db655c73e3d244a10adcda7740964556bfa16f0e9fd"

  url "https://github.com/thieso2/MoremaidApp/releases/download/v#{version}/Moremaid-0.4.0-macOS.zip",
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
