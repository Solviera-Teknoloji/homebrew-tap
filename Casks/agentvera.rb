cask "agentvera" do
  arch arm: "arm64", intel: "x64"

  version "0.8.18"
  sha256 arm:   "3d26160efb1bc1fece318deb6d3375fc51bac707cea88e0157b7f87419d4927d",
         intel: "2710dc4015d5835a1d79549794a4c6e0f26a3df4395a294141f382aa8521c682"

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
