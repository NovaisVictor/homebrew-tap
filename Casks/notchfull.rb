cask "notchfull" do
  version "0.1.0"
  sha256 "c490ade005d5b41d1cc4b5751b0221ddbd959fcb0a656035b47ace7febaac327"

  url "https://github.com/NovaisVictor/notchFull/releases/download/v#{version}/NotchFull-#{version}.zip"
  name "NotchFull"
  desc "Notch app with widgets and live activities"
  homepage "https://github.com/NovaisVictor/notchFull"

  depends_on macos: ">= :tahoe"

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
