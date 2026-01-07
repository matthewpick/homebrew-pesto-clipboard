cask "pesto-clipboard" do
  version "0.3.2"
  sha256 "aa8659e0cdf3ba1dd189c96241d6a9afd7d62b788b3bb74fe63ab7890bbd3cfc"

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
