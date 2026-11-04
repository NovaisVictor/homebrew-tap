cask "notchfull" do
  version "0.1.1"
  sha256 "51de4c38af5426a63822e137f982b9b19d1d2463202a229bcfa8b3360be674a6"

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
