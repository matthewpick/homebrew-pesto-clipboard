cask "pesto-clipboard" do
  version "0.3.3"
  sha256 "038af9685b94199aa6cce200d127e57f34705820522b4be9f1302edec40b0c81"

  url "https://github.com/matthewpick/pesto-clipboard/releases/download/v#{version}/PestoClipboard-#{version}.dmg"
  name "Pesto Clipboard"
  desc "Clipboard manager for macOS"
  homepage "https://github.com/matthewpick/pesto-clipboard"

  depends_on macos: ">= :sonoma"

  app "Pesto Clipboard.app"

  zap trash: [
    "~/Library/Application Support/PestoClipboard",
    "~/Library/Preferences/com.pestoclipboard.PestoClipboard.plist",
  ]
end
