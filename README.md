# hybes/tap

Homebrew casks for [Sipper](https://sipper.dev/), a free SIP phone.

```bash
brew install --cask hybes/tap/sipper
```

Update with `brew upgrade --cask sipper`. `brew uninstall --cask sipper` removes
the app and keeps your accounts, contacts and history; add `--zap` to remove
those too. SIP passwords stay in the Keychain either way.

The cask installs the notarised disk image from
[Sipper's GitHub releases](https://github.com/hybes/sipper/releases).
Sipper needs a Mac with Apple silicon and macOS 14 Sonoma or later.
