cask "hyprmac" do # Generated from packaging/hyprmac.rb.template by script/publish-release.sh
  version "0.1.4"
  sha256 "945f90ac22f99ea0e1db3dd75d57a916e021200d22023a8dfe0ce57595345747"

  url "https://github.com/NovaisVictor/HyprMac/releases/download/v#{version}/HyprMac-#{version}.zip"
  name "HyprMac"
  desc "i3-like tiling window manager with Hyprland-like features"
  homepage "https://github.com/NovaisVictor/HyprMac"

  depends_on macos: :ventura # macOS 13, Package.swift: platforms: [.macOS(.v13)]
  depends_on arch: :arm64 # build-release.sh builds Apple Silicon binaries only

  postflight_steps do
    run "/usr/bin/xattr", args: ["-d", "com.apple.quarantine", "{{staged_path}}/HyprMac-#{version}/bin/hyprmac"], must_succeed: false
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/HyprMac.app"], must_succeed: false
  end

  app "HyprMac-#{version}/HyprMac.app"
  binary "HyprMac-#{version}/bin/hyprmac"

  binary "HyprMac-#{version}/shell-completion/zsh/_hyprmac",
      target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_hyprmac"
  binary "HyprMac-#{version}/shell-completion/bash/hyprmac",
      target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/hyprmac"
  binary "HyprMac-#{version}/shell-completion/fish/hyprmac.fish",
      target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/hyprmac.fish"

  # Listed when the release is published: a Dir[] glob of staged_path runs before an upgrade stages the new
  # version, so it found no man pages and the upgrade removed them
  manpage "HyprMac-#{version}/manpage/hyprmac-balance-sizes.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-false.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-eval.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-list-modes.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-mode.1"
  manpage "HyprMac-#{version}/manpage/hyprmac.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-debug-windows.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-resize.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-swap-split.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-list-workspaces.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-move-workspace-to-monitor.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-layout.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-grab-and-move.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-scratchpad-toggle.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-move.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-list-apps.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-close-all-windows-but-current.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-workspace-back-and-forth.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-close.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-list-windows.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-run-callback.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-test-not.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-reload-config.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-preselect.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-toggle-split.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-grab-and-resize.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-pseudotile.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-volume.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-true.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-focus-back-and-forth.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-exec-and-forget.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-macos-native-fullscreen.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-config.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-focus-monitor.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-list-monitors.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-flatten-workspace-tree.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-floating-frame.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-fullscreen.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-move-node-to-monitor.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-workspace.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-subscribe.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-move-node-to-workspace.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-macos-native-minimize.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-split.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-focus.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-move-mouse.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-swap.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-test.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-echo.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-tree.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-summon-workspace.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-pin.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-list-exec-env-vars.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-trigger-binding.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-enable.1"
  manpage "HyprMac-#{version}/manpage/hyprmac-join-with.1"

  zap trash: [
    "~/.hyprmac.toml",
    "~/.config/hyprmac",
    "~/Library/Preferences/com.victornovais.HyprMac.plist",
  ]

  caveats <<~EOS
    HyprMac is ad-hoc signed and not notarized.
    If macOS refuses to open it, remove the quarantine attribute:
      xattr -dr com.apple.quarantine /Applications/HyprMac.app

    The ad-hoc signature changes with every release, so macOS asks for the
    Accessibility permission again after each update.
  EOS
end
