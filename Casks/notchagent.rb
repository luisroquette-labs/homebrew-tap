cask "notchagent" do
  version "3.5.3"
  sha256 "34b2587be25ebd0903e0b08c68803b52a7634c361962c77d41d6a59449ae0aaa"

  url "https://github.com/luisroquette/notchagent/releases/download/v3.5.3/NotchAgent-3.5.3.dmg"
  name "NotchAgent"
  desc "Fuel gauge for Claude Code and Codex quotas in the MacBook notch"
  homepage "https://notchagent.app"

  depends_on macos: :sonoma

  app "NotchAgent.app"

  zap trash: "~/Library/Application Support/NotchAgent"
end
