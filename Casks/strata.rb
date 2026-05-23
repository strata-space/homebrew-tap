cask "strata" do
  version "1.0.0"
  sha256 "29c702d3ce8295ae53ec2702874a6a62d2819bf151c0abe0d5ec93fe41cc32bf"

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
