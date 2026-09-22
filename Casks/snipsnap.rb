cask "snipsnap" do
  version "1.2.0"
  sha256 "33ac6545fc149e47f583af1574208b5c005ed75198ce63bb55f701f3dfe14419"

  url "https://github.com/iskf/SnipSnap/releases/download/v#{version}/SnipSnap-#{version}.dmg"
  name "SnipSnap"
  desc "Native macOS screenshot, pinning, OCR, and Safari-style in-place translation tool"
  homepage "https://github.com/iskf/SnipSnap"

  depends_on macos: ">= :sonoma"

  app "SnipSnap.app"

  zap trash: [
    "~/Library/Application Support/SnipSnap",
    "~/Library/Caches/com.snipsnap.app",
    "~/Library/Preferences/com.snipsnap.app.plist",
  ]
end
