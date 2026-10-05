cask "opendisplay" do
  version "0.11.2"
  sha256 "640f0997196164c025684e9aaa49f4682077a78be0294196d34b36934527ef61"

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
