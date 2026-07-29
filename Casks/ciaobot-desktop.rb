cask "ciaobot-desktop" do
  version "0.6.4"
  sha256 "f23d0981505c7df6e4b7bda800a6a2707cf4919c3fe915d32880b8c9ec427e9d"

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
