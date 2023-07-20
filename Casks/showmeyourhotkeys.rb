cask "showmeyourhotkeys" do
  version "1.7,20"
  sha256 "4cca26821cd0d715f1b90ea34e886b2814361b932ac23a502b31e418a6d55c4e"

  url "https://showmeyourhotkeys.moxadventu.com/app/ShowMeYourHotKeys.zip"
  name "showmeyourhotkeys"
  desc "Show applications menu items hotkeys"
  homepage "https://showmeyourhotkeys.moxadventu.com/"

  livecheck do
    url "https://showmeyourhotkeys.moxadventu.com/update/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :big_sur"

  app "ShowMeYourHotKeys.app"
end
