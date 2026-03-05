cask "moremaidapp" do
  version "0.4.2"
  sha256 "ffef19b72362da642802545c3264565ad3c9c4913be5b7ffe543c6102435633b"

  url "https://github.com/thieso2/MoremaidApp/releases/download/v#{version}/Moremaid-0.4.2-macOS.zip",
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
