cask "strata" do
  version "0.0.0"
  sha256 :no_check

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
