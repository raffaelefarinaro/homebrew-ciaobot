cask "ciaobot-desktop" do
  version "0.7.0"
  sha256 "b59886605a1ffca522d130e27179d7dd44716551a2007edd5555e2522e9a46ff"

  url "https://github.com/raffaelefarinaro/ciaobot/releases/download/v#{version}/Ciaobot_#{version}_universal.dmg"
  name "Ciaobot"
  desc "Native macOS shell for the local-first Ciaobot assistant"
  homepage "https://github.com/raffaelefarinaro/ciaobot"

  depends_on formula: "ciaobot"
  depends_on macos: :ventura
  auto_updates true

  app "Ciaobot.app"

  uninstall quit: "local.ciaobot.app"

  caveats <<~EOS
    Ciaobot is ad-hoc signed and is not notarized, so macOS blocks the first
    launch with "Apple could not verify Ciaobot is free of malware".

    To allow it: open Ciaobot.app once, then go to System Settings -> Privacy &
    Security, scroll to Security, and click "Open Anyway" next to the Ciaobot
    message. Authenticate, launch the app again, and confirm Open.

    Control-clicking the app and choosing Open does not clear this dialog --
    Apple removed that bypass in macOS 15. The "Open Anyway" button only appears
    for about an hour after a blocked launch. Do not disable Gatekeeper.
  EOS
end
