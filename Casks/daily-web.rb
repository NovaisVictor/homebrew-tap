cask "daily-web" do # Generated from macos/Scripts/daily-web.rb.tmpl by macos/Scripts/release.sh
  version "0.2.0"
  sha256 "ef2baba0ca59f87e5dd0d9ae3ff1739b3f44cccffd8a775eacf0373a65d20ec7"

  url "https://github.com/NovaisVictor/daily-web/releases/download/macos-v#{version}/DailyWeb-#{version}.zip"
  name "Daily Web"
  desc "Native client for a self-hosted daily-web dashboard"
  homepage "https://github.com/NovaisVictor/daily-web"

  depends_on arch: :arm64 # release.sh builds Apple Silicon only
  depends_on macos: :tahoe # Config: MACOSX_DEPLOYMENT_TARGET 26

  app "DailyWeb.app"

  # The app has no Developer ID, so Gatekeeper would block the first launch of
  # each version. Same approach as the HyprMac cask in this tap.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/DailyWeb.app"], must_succeed: false
  end

  zap trash: [
    "~/Library/Application Scripts/io.github.novaisvictor.dailyweb",
    "~/Library/Containers/io.github.novaisvictor.dailyweb",
  ]

  caveats <<~EOS
    Daily Web is signed with the project's own certificate, not an Apple
    Developer ID, and is not notarized. The cask removes the quarantine
    attribute on install. If macOS still refuses to open it:
      xattr -dr com.apple.quarantine /Applications/DailyWeb.app
  EOS
end
