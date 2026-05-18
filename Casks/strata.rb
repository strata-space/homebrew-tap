cask "strata" do
  version "0.1.0"
  sha256 "e2acc6f2f1e00dd964c505f8df061b013a5d20127309107f79e90578f7159b0f"

  url "https://github.com/strata-space/strata/releases/download/cli-v#{version}/strata-darwin-universal.pkg"
  name "Strata"
  desc "AI-empowered document editing with native macOS filesystem mount"
  homepage "https://strata.space"

  depends_on macos: ">= :sequoia"

  pkg "strata-darwin-universal.pkg"

  uninstall pkgutil: "space.strata.app",
            delete:  [
              "/Applications/Strata.app",
              "/usr/local/bin/strata",
            ]

  zap trash: [
    "~/Library/Application Support/Strata",
    "~/Library/Caches/space.strata.app",
    "~/Library/Logs/Strata",
    "~/Library/Preferences/space.strata.app.plist",
  ]
end
