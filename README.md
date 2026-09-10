# dhanajitkapali/homebrew-tap

Homebrew tap for [Markmer](https://dhanajitkapali.github.io/Markmer/), a native macOS Markdown reader with inline Mermaid diagrams.

## Install

```bash
brew install --cask dhanajitkapali/tap/markmer
```

Markmer is open source but not notarized, so macOS asks for confirmation on first launch. To skip that dialog, install without the quarantine flag:

```bash
brew install --cask --no-quarantine dhanajitkapali/tap/markmer
```

## Update

```bash
brew upgrade --cask markmer
```

The cask is bumped automatically by the [Markmer release workflow](https://github.com/dhanajitkapali/Markmer/blob/main/.github/workflows/release.yml) whenever a new version is tagged.
