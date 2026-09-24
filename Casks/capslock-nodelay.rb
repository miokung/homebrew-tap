cask "capslock-nodelay" do
  version "1.0.1"
  sha256 "adf863be70ad2a8c54ee95fadbcc15ea84446003328d7a92c9eec39a305f2aeb"

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
