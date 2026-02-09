cask "moremaidapp" do
  version "0.3.0"
  sha256 "ebe06a03c6dee6be37c4fa6b55f7e2afe341c01c985e35f2797ab1c3f2f51ac3"

  url "https://github.com/thieso2/MoremaidApp/releases/download/v#{version}/Moremaid-0.3.0-macOS.zip",
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
