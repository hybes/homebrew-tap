cask "sipper" do
  version "0.2.0"
  sha256 "e3c262db36cdcd13c4b4623f61316812a38fb227c571e6b7a6b93dab576bd629"

  url "https://github.com/hybes/sipper/releases/download/v#{version}/Sipper-#{version}.dmg"
  name "Sipper"
  desc "SIP phone"
  homepage "https://sipper.dev/"

  # Older Windows releases were tagged windows-v<version>, so only plain v<version> tags count.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Sipper.app"

  zap trash: [
    "~/Library/Application Support/Arc/User Data/NativeMessagingHosts/com.hybes.sipper.json",
    "~/Library/Application Support/Chromium/NativeMessagingHosts/com.hybes.sipper.json",
    "~/Library/Application Support/Google/Chrome Beta/NativeMessagingHosts/com.hybes.sipper.json",
    "~/Library/Application Support/Google/Chrome/NativeMessagingHosts/com.hybes.sipper.json",
    "~/Library/Application Support/Microsoft Edge/NativeMessagingHosts/com.hybes.sipper.json",
    "~/Library/Application Support/net.imput.helium/NativeMessagingHosts/com.hybes.sipper.json",
    "~/Library/Application Support/Sipper",
    "~/Library/Application Support/Vivaldi/NativeMessagingHosts/com.hybes.sipper.json",
    "~/Library/Preferences/com.hybes.sipper.plist",
  ]
end
