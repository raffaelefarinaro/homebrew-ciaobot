cask "ciaobot-desktop" do
  version "0.6.3"
  sha256 "1cad10b6095842963515edaf9e05a9042d5b8404ac9b080be2aa9822e547c351"

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
