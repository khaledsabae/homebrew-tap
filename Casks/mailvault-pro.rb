cask "mailvault-pro" do
  version "0.2.1"
  sha256 "c8e81a5202a5a5f52a889a82342357a3c8f92a88ea0ed4c7cdba39dd9c69d88e"

  url "https://github.com/khaledsabae/mailvault/releases/download/v#{version}/MailVaultPro-#{version}-macOS-arm64.dmg"
  name "MailVault Pro"
  desc "Local-first Microsoft 365 & Outlook email archiver to SQLite FTS5 & Obsidian Markdown"
  homepage "https://mailvaulty.com/"

  depends_on arch: :arm64
  depends_on macos: ">= :catalina"

  app "MailVault Pro.app"

  zap trash: [
    "~/Library/Application Support/com.mailvault.pro",
    "~/Library/Caches/com.mailvault.pro",
    "~/Library/Preferences/com.mailvault.pro.plist",
  ]
end
