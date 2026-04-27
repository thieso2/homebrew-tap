cask "moremaidapp" do
  version "0.5.0"
  sha256 "74211c1c6df78ad7cf2d3c1c3649034cc275034f4095bf1a70d016841a1c2573"

  url "https://github.com/thieso2/MoremaidApp/releases/download/v#{version}/Moremaid-0.5.0-macOS.zip",
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
