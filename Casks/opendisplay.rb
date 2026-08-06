cask "opendisplay" do
  version "0.10.1"
  sha256 "0da71273c0a3033118c92ba831a24cea05349e56e43712fa6dc2433fecd0c2cc"

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
