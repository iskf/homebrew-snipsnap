cask "snipsnap" do
  version "1.1.0"
  sha256 "d2094518a87c3df693b02bf8ba4ef99a99e72e4fb266361395fc6042a90bcb82"

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
