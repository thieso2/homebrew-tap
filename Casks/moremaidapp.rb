cask "moremaidapp" do
  version "0.4.4"
  sha256 "c896492963e3a3b0ce37ebf9993b926ed19bfad4d3f1d10dedef0a15d4924e52"

  url "https://github.com/thieso2/MoremaidApp/releases/download/v#{version}/Moremaid-0.4.4-macOS.zip",
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
