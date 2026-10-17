# homebrew-brs-desktop

Homebrew tap for the [BrightScript Simulator](https://github.com/lvcabral/brs-desktop) — a Roku device simulator for BrightScript and SceneGraph development.

## Install

```bash
brew tap lvcabral/brs-desktop
brew install --cask brs-desktop
```

Homebrew picks the DMG for your Mac: the `arm64` build on Apple Silicon, the `x64` build on Intel.

## Upgrade

```bash
brew upgrade --cask brs-desktop
```

## Uninstall

```bash
brew uninstall --cask brs-desktop
brew untap lvcabral/brs-desktop
```

`brew uninstall --zap --cask brs-desktop` also removes the simulator's settings and app data.
