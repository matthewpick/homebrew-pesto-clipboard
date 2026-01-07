cask "pesto-clipboard" do
  version "0.3.1"
  sha256 "2e8b8c45ff9c078ce7401b441e5428608fd20b96c434d1d822c6fcef8efd5ec3"

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
