cask "notchagent" do
  version "3.5.2"
  sha256 "71fc4d23580124bfa41040643abbde39a2c9ee73c44f8ff9a340689f11a9227d"

  url "https://github.com/luisroquette/notchagent/releases/download/v3.5.2/NotchAgent-3.5.2.dmg"
  name "NotchAgent"
  desc "Fuel gauge for Claude Code and Codex quotas in the MacBook notch"
  homepage "https://notchagent.app"

  depends_on macos: :sonoma

  app "NotchAgent.app"

  zap trash: "~/Library/Application Support/NotchAgent"
end
