cask "moremaidapp" do
  version "0.5.2"
  sha256 "68a220684984c20b080972d733a618f9663085805afb6446c8929db39529accf"

  url "https://github.com/thieso2/MoremaidApp/releases/download/v#{version}/Moremaid-0.5.2-macOS.zip",
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
