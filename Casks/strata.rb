cask "strata" do
  version "1.10.1"
  sha256 "d0abfc6d5c5df5f0fdd545a3b62a2ee5b76c400d83cf8b5608e85ea431ad67e2"

  url "https://github.com/strata-space/strata/releases/download/cli-v#{version}/strata-darwin-universal.pkg"
  name "Strata"
  desc "AI-empowered document editing with native macOS filesystem mount"
  homepage "https://strata.space"

  depends_on macos: ">= :sequoia"

  pkg "strata-darwin-universal.pkg"

  uninstall pkgutil: "space.strata.cli",
            delete:  [
              "/Applications/Strata CLI.app",
              "/usr/local/bin/strata",
            ]

  zap trash: [
    "~/Library/Application Support/Strata",
    "~/Library/Caches/space.strata.cli",
    "~/Library/Logs/Strata",
    "~/Library/Preferences/space.strata.cli.plist",
  ]
end
