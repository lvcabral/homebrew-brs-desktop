cask "brs-desktop" do
  arch arm: "arm64", intel: "x64"

  version "2.6.2"
  sha256 arm:   "9d601f56ad1372bf37107de14ba8116abe36e33e30766503a57999930e0e2820",
         intel: "c3a97958d0f1121c8019b2abb181915065da44db0b4a3fd867c59c2644959b04"

  url "https://github.com/lvcabral/brs-desktop/releases/download/v#{version}/brs-desktop-#{version}-macOS-#{arch}.dmg"
  name "BrightScript Simulator"
  desc "Roku device simulator for BrightScript and SceneGraph development"
  homepage "https://lvcabral.com/brs/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "BrightScript Simulator.app"

  zap trash: [
    "~/Library/Application Support/BrightScript Simulator",
    "~/Library/Preferences/com.lvcabral.brs-desktop.app.plist",
    "~/Library/Saved Application State/com.lvcabral.brs-desktop.app.savedState",
  ]
end
