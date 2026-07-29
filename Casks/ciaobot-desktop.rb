cask "ciaobot-desktop" do
  version "0.6.1"
  sha256 "5b8e73aaf362344f82ae21097db72d6c378563ed1cd932204354c441c778be7a"

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
