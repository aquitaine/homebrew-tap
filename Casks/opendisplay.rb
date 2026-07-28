cask "opendisplay" do
  version "0.8.2"
  sha256 "cac72898ca9809d7e60444235ddf2d2acbd1b74ab2f37e736eab3256d4ec51e1"

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
