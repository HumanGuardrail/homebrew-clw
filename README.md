# homebrew-clw — Homebrew tap for `clw` (CoreLink Workspaces CLI)

```sh
brew install humangr-labs/clw/clw
```

`clw` is the CoreLink Workspaces command-line client (snapshot / hydrate / run against the
CoreLink content-addressed backend).

**Proprietary.** The `clw` binary is publicly downloadable, but its **use is governed by the
End User License Agreement** shipped with each release — the source code is closed. Public
availability of the binary grants no license beyond that EULA.

**Where the binaries come from.** This tap's formula points at the public release mirror
**[humangr-labs/clw-releases](https://github.com/humangr-labs/clw-releases)**, where each
release publishes the signed binaries, `SHA256SUMS` (+ minisign signature), `minisign.pub`,
SBOM, and build-provenance attestation. Homebrew verifies the SHA-256 on install; you can
independently verify the minisign signature and the SLSA provenance.

**Auto-maintained.** `Formula/clw.rb` (`version` + per-platform `sha256`) is rewritten by the
`clw` release pipeline on every real `vX.Y.Z` tag — do not hand-edit.
