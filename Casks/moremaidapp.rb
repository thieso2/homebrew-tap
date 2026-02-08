cask "moremaidapp" do
  version "0.2.1"
  sha256 "a0a4a7bb088be93483f2b365cfb71f088dfdcfcf9c8577ef43b954818a3f051b"

  url "https://github.com/thieso2/MoremaidApp/releases/download/v#{version}/Moremaid-0.2.1-macOS.zip",
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
