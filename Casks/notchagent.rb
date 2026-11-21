# frozen_string_literal: true

cask "notchagent" do
  version "3.7.1"
  sha256 "5476e781d5c33f5d03cd88cfae4c74eca40f632c1fbb99cc26770758556f59fa"

  url "https://github.com/luisroquette-labs/notchagent/releases/download/v#{version}/NotchAgent-#{version}.dmg"
  name "NotchAgent"
  desc "Fuel gauge for Claude Code and Codex quotas in the MacBook notch"
  homepage "https://notchagent.app/"

  depends_on macos: :sonoma

  app "NotchAgent.app"

  zap trash: "~/Library/Application Support/NotchAgent"
end
