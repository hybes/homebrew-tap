cask "sipper" do
  version "0.1.0"
  sha256 "217e88c58750f7964ab5253057cd240a092197b5261d559abf8b0bc4e109f5c1"

  url "https://github.com/hybes/sipper/releases/download/v#{version}/Sipper-#{version}.dmg"
  name "Sipper"
  desc "SIP phone"
  homepage "https://sipper.dev/"

  # Windows releases are tagged windows-v<version>, so only plain v<version> tags count.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

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
