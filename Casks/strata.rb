cask "strata" do
  version "3.4.3"
  sha256 "6090c49c8883944dc6f1a64ab33d1f496ea1d068c2749a85b6987f811ce907a9"

  url "https://github.com/strata-space/strata/releases/download/cli-v#{version}/strata-darwin-universal.pkg"
  name "Strata"
  desc "AI-empowered document editing with native macOS filesystem mount"
  homepage "https://strata.space"

  # The bundled CLI binary (Contents/Helpers/strata) targets macOS 11+, so
  # `strata link` live-sync works on Big Sur and newer. `strata mount` (FSKit)
  # additionally needs macOS 15.4 and is gated at runtime by `detect_backend()`,
  # which prints an actionable "macOS 15.4+ required" error on older systems.
  depends_on macos: :big_sur

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
