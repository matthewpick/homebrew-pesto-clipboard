cask "pesto-clipboard-nightly" do
  version :latest
  sha256 :no_check

  url "https://github.com/matthewpick/pesto-clipboard/releases/download/nightly/PestoClipboard-nightly.dmg"
  name "Pesto Clipboard (Nightly)"
  desc "Clipboard manager for macOS - bleeding edge builds"
  homepage "https://github.com/matthewpick/pesto-clipboard"

  depends_on macos: ">= :sonoma"

  app "Pesto Clipboard.app"

  zap trash: [
    "~/Library/Application Support/PestoClipboard",
    "~/Library/Preferences/com.pestoclipboard.PestoClipboard.plist",
  ]

  caveats <<~EOS
    This is a nightly build and may be unstable.
    For stable releases, use: brew install matthewpick/pesto-clipboard/pesto-clipboard
  EOS
end
