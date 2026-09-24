cask "capslock-nodelay" do
  version "1.0"
  sha256 "eb3937e3dd779abe090fac1d1bd6a3e5f92958b48ace77f7ba8cdce7431de35f"

  url "https://github.com/miokung/CapsLock-NoDelay/releases/download/v#{version}/CapsLock-NoDelay-#{version}.dmg"
  name "CapsLock NoDelay"
  desc "Menubar app that removes the Caps Lock input source switch delay"
  homepage "https://github.com/miokung/CapsLock-NoDelay"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "CapsLock NoDelay.app"

  uninstall quit: "dev.korapat.CapsLockNoDelay"

  zap trash: "~/Library/Preferences/dev.korapat.CapsLockNoDelay.plist"

  caveats <<~EOS
    #{token} is not notarized. On first launch macOS says it can't verify the app:
    open System Settings → Privacy & Security and click "Open Anyway".
  EOS
end
