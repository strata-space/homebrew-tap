cask "strata" do
  version "0.2.1"
  sha256 "808eb2f8c6329afc6f078aadfaaed95f529691a28b0062f45cfb5a50bbe416dc"

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
