# Strata Homebrew Tap

Official Homebrew tap for [Strata](https://strata.space) — AI-empowered document editing with native macOS filesystem mount.

## Install

```bash
brew install --cask strata-space/strata/strata
```

Homebrew auto-taps on first install. Subsequent updates:

```bash
brew update && brew upgrade --cask strata
```

## What you get

- `Strata.app` in `/Applications`
- `strata` CLI on PATH (symlinked to `/usr/local/bin/strata`)
- FSKit filesystem extension (macOS 15.4+)

## Other download options

The download page at https://strata.space/download links the .pkg directly for non-Homebrew users. Linux tarballs are attached to each [GitHub Release](https://github.com/strata-space/strata/releases).

## Cask updates

The cask is auto-bumped by the Strata release pipeline; manual PRs to this repo are not generally needed.
