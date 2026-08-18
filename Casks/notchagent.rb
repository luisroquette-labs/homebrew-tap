cask "notchagent" do
  version "3.1.2"
  sha256 "afc66a576d48b2c1a4bfeb9099d864158e673b9209b1e2db0436b0c709a234f4"

  url "https://github.com/luisroquette/notchagent/releases/download/v3.1.2/NotchAgent-Desk-Beta1-3.1.2.dmg"
  name "NotchAgent"
  desc "Fuel gauge for Claude Code and Codex quotas in the MacBook notch"
  homepage "https://github.com/luisroquette/notchagent"

  depends_on macos: :sonoma

  app "NotchAgent.app"

  zap trash: "~/Library/Application Support/NotchAgent"
end
