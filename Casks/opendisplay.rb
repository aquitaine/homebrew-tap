cask "opendisplay" do
  version "0.11.7"
  sha256 "93609198fd61bd22f9f748a173ed404ab0ec591674eaf8b0b36907de717fa5ad"

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
