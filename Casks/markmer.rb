cask "markmer" do
  version "1.0.0"
  sha256 "abc110015a17ec386d37849945866364e539ac20a3f4bc6f7ab382fbafa86750"

  url "https://github.com/dhanajitkapali/Markmer/releases/download/v#{version}/Markmer-#{version}.zip"
  name "Markmer"
  desc "Native Markdown reader with inline Mermaid diagrams"
  homepage "https://dhanajitkapali.github.io/Markmer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Markmer.app"

  zap trash: [
    "~/Library/Preferences/com.markmer.app.plist",
    "~/Library/Saved Application State/com.markmer.app.savedState",
  ]

  caveats <<~EOS
    Markmer is open source but not notarized. On first launch macOS will
    refuse to open it. Either click "Open Anyway" in System Settings >
    Privacy & Security, or install with the quarantine flag disabled:

      brew install --no-quarantine dhanajitkapali/tap/markmer
  EOS
end
