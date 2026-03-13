# Homebrew Tap for Inky

Homebrew formula for the [Inky](https://github.com/foundation/inky) email templating engine.

## Install

```bash
brew tap foundation/inky
brew install inky
```

## Update

```bash
brew update
brew upgrade inky
```

## Release Process

When a new version is tagged in the main inky repo, the release workflow:

1. Cross-compiles binaries for macOS (Intel + ARM), Linux (x86 + ARM), and Windows
2. Creates a GitHub Release with tarballs and SHA256 checksums
3. Update `Formula/inky.rb` with the new version, URLs, and checksums
