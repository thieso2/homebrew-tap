cask "moremaidapp" do
  version "0.5.6"
  sha256 "d73f1ce30f9d416abededb259fb5f9099fd1fb6b02836965b8e9f55a47ef5412"

  url "https://github.com/thieso2/MoremaidApp/releases/download/v#{version}/Moremaid-0.5.6-macOS.zip",
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
