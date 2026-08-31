# frozen_string_literal: true

cask "notchagent" do
  version "3.5.5"
  sha256 "8d1249f0461f90b08431534fdc07d777be3ec8551be08b1529a0cd1a17e83d10"

  url "https://github.com/luisroquette/notchagent/releases/download/v#{version}/NotchAgent-#{version}.dmg"
  name "NotchAgent"
  desc "Fuel gauge for Claude Code and Codex quotas in the MacBook notch"
  homepage "https://notchagent.app/"

  depends_on macos: :sonoma

  app "NotchAgent.app"

  zap trash: "~/Library/Application Support/NotchAgent"
end
