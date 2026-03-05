cask "moremaidapp" do
  version "0.4.1"
  sha256 "bf5c2a5516714949b88ef98c4d0476362ffd208acf4c16c410e2d3422d89e902"

  url "https://github.com/thieso2/MoremaidApp/releases/download/v#{version}/Moremaid-0.4.1-macOS.zip",
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
