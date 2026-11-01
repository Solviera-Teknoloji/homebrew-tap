cask "agentvera" do
  arch arm: "arm64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "3805a6c6a636f72b534c3ea3608783771f506373a618dd85657e58501b184fb4",
         intel: "762558dd94f1f3db86962648083531ba1bc6059f770eb0f29268710102801347"

  url "https://agentvera.dev/downloads/#{version}/AgentVera-mac-#{arch}.dmg"
  name "AgentVera"
  desc "Run Claude Code, Codex and other coding agents side by side"
  homepage "https://agentvera.dev/en/"

  livecheck do
    url "https://agentvera.dev/downloads/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "AgentVera.app"

  zap trash: [
    "~/Library/Application Support/AgentVera",
    "~/Library/Caches/AgentVera",
    "~/Library/Caches/agentvera-updater",
    "~/Library/Caches/dev.agentvera.app",
    "~/Library/Caches/dev.agentvera.app.ShipIt",
    "~/Library/HTTPStorages/dev.agentvera.app",
    "~/Library/Logs/AgentVera",
    "~/Library/Preferences/dev.agentvera.app.plist",
    "~/Library/Saved Application State/dev.agentvera.app.savedState",
  ]
end
