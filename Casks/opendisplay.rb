cask "opendisplay" do
  version "0.10.2"
  sha256 "3faab085a31978875e7ec53f38bcf1659d218a6ed0a9f78abe143f9969ff7809"

  url "https://github.com/aquitaine/OpenDisplay/releases/download/v#{version}/OpenDisplay.zip"
  name "OpenDisplay"
  desc "Free, open-source display control for macOS — DDC/CI brightness, volume, colour, and input from the menu bar"
  homepage "https://github.com/aquitaine/OpenDisplay"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "OpenDisplay.app"

  zap trash: [
    "~/Library/Application Support/OpenDisplay",
    "~/Library/Preferences/dev.opendisplay.app.plist",
  ]
end
