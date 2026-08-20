cask "notchagent" do
  version "3.5.1"
  sha256 "784064639255463502cef94331499a0e7530d98336d48613fc08f45cd9ee0a3b"

  url "https://github.com/luisroquette/notchagent/releases/download/v3.5.1/NotchAgent-3.5.1.dmg"
  name "NotchAgent"
  desc "Fuel gauge for Claude Code and Codex quotas in the MacBook notch"
  homepage "https://github.com/luisroquette/notchagent"

  depends_on macos: :sonoma

  app "NotchAgent.app"

  zap trash: "~/Library/Application Support/NotchAgent"
end
