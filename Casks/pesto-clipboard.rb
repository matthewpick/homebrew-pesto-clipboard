cask "pesto-clipboard" do
  version "0.3.4"
  sha256 "71d82050f17d80f1f8bf6b11236943b1ad6218be748d3b4ac5c42eed99f5a77e"

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
