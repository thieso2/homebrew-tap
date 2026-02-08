cask "moremaidapp" do
  version "0.2.4"
  sha256 "e9ecb94c70b1c7ba61533839700cbaec6772fa6d8f4ec27aba648a8148f37cc6"

  url "https://github.com/thieso2/MoremaidApp/releases/download/v#{version}/Moremaid-0.2.4-macOS.zip",
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
