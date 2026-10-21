cask "stayawake" do
  version "1.3.2"
  sha256 "b23cf74a1a84ff3fd65adc1746476a8047e851d4c45bb47fc88f0230df266b8e"

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
