cask "stayawake" do
  version "1.4.0"
  sha256 "a491175eec028c98a0d1bb4635f7a6c70f6285a34d530f3c693d5d0b3154b5fa"

  url "https://github.com/pratiknayakprojects-dev/StayAwake/releases/download/v#{version}/StayAwake.dmg"
  name "StayAwake"
  desc "Menu bar app that keeps the Mac awake, including with the lid closed"
  homepage "https://pratiknayakprojects-dev.github.io/StayAwake/"

  depends_on macos: :ventura

  app "StayAwake.app"

  zap trash: [
    "~/Library/Preferences/com.pratiknayak.stayawake.plist",
    "~/Library/Caches/com.pratiknayak.stayawake",
  ]
end
