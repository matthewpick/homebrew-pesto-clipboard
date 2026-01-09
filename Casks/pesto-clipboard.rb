cask "pesto-clipboard" do
  version "0.3.5"
  sha256 "c1d4a321d679e1e28b083c79bf1f03397c35ae455134667c9e931cdb79793a9d"

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
