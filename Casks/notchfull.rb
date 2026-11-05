cask "notchfull" do
  version "0.2.0"
  sha256 "9bd3174b311b223ea13f7b90624c8a9130d43fdea845c8a8df43e9606f0a3eff"

  url "https://github.com/NovaisVictor/notchFull/releases/download/v#{version}/NotchFull-#{version}.zip"
  name "NotchFull"
  desc "Notch app with widgets and live activities"
  homepage "https://github.com/NovaisVictor/notchFull"

  depends_on macos: :tahoe

  app "NotchFull.app"

  zap trash: [
    "~/Library/Application Support/NotchFull",
    "~/Library/Preferences/com.victornovais.NotchFull.plist",
  ]

  caveats <<~EOS
    NotchFull is not notarized yet. On first launch macOS blocks it:
      System Settings → Privacy & Security → "Open Anyway"
    or remove the quarantine flag:
      xattr -dr com.apple.quarantine "#{appdir}/NotchFull.app"
  EOS
end
