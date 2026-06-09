cask "strata" do
  version "2.0.0"
  sha256 "535dd26e7f4e4e74b24f0ac0ea415a3454fe7c2588c96ad25bfabaf49de99536"

  url "https://github.com/strata-space/strata/releases/download/cli-v#{version}/strata-darwin-universal.pkg"
  name "Strata"
  desc "AI-empowered document editing with native macOS filesystem mount"
  homepage "https://strata.space"

  depends_on macos: :sequoia

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
