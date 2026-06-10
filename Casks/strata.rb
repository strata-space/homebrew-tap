cask "strata" do
  version "3.1.1"
  sha256 "d6597218a762ab53099590e5961a13ab86b69120bfa4c197af7efb2f0729801d"

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
