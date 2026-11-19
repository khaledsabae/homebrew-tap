cask "mailvault-pro" do
  version "0.2.2"
  sha256 "40e8fd2e1314cd303d0d7407272c2e8ed77745affd82404e697df7d0643aeaa9"

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
