cask "ciaobot-desktop" do
  version "0.6.2"
  sha256 "c3c0a2efc0b785da4185729021df58e070bc4d18cce7e043ec77607bfaa994cf"

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
    Ciaobot is ad-hoc signed and is not notarized. On first launch, macOS may
    require you to Control-click Ciaobot.app, choose Open, and confirm once.
    Do not disable Gatekeeper.
  EOS
end
