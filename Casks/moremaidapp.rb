cask "moremaidapp" do
  version "0.5.4"
  sha256 "acec3101972b0d99c6dd723489db8a5b8b8e53c680e404a86056c49fd37f8d2d"

  url "https://github.com/thieso2/MoremaidApp/releases/download/v#{version}/Moremaid-0.5.4-macOS.zip",
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
