cask "notchagent" do
  version "3.5.4"
  sha256 "a6d93cf488b9dfadfb26d6d0eaf0e44a8d6577a15e7f7e58eafb987036e87f3f"

  url "https://github.com/luisroquette/notchagent/releases/download/v3.5.4/NotchAgent-3.5.4.dmg"
  name "NotchAgent"
  desc "Fuel gauge for Claude Code and Codex quotas in the MacBook notch"
  homepage "https://notchagent.app"

  depends_on macos: :sonoma

  app "NotchAgent.app"

  zap trash: "~/Library/Application Support/NotchAgent"
end
