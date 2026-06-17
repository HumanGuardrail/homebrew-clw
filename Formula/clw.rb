# typed: false
# frozen_string_literal: true

# clw — CoreLink Workspaces CLI.
#
# PROPRIETARY: the clw binary is publicly downloadable but its USE is governed by
# the End User License Agreement shipped with each release (the source is closed).
# `license :cannot_represent` reflects that this is NOT an SPDX open-source license.
#
# AUTO-MAINTAINED: the `version` and the four per-platform `sha256` values below are
# rewritten by the clw release pipeline on every real `vX.Y.Z` tag (sha256 parsed
# from the published SHA256SUMS — single source of truth). Do not hand-edit; the
# placeholders here are inert until the first real release bumps them.
class Clw < Formula
  desc "CoreLink Workspaces — content-addressed workspace snapshot / hydrate / run CLI"
  homepage "https://github.com/humangr-labs/clw-releases"
  version "0.0.0"
  license :cannot_represent

  BASE = "https://github.com/humangr-labs/clw-releases/releases/download".freeze

  on_macos do
    on_arm do
      url "#{BASE}/v#{version}/clw-#{version}-aarch64-apple-darwin"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "#{BASE}/v#{version}/clw-#{version}-x86_64-apple-darwin"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "#{BASE}/v#{version}/clw-#{version}-aarch64-unknown-linux-gnu"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "#{BASE}/v#{version}/clw-#{version}-x86_64-unknown-linux-gnu"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    # The release asset is a bare (non-archive) binary named clw-<version>-<target>;
    # install it as `clw`.
    downloaded = Dir["clw-*"].find { |f| File.file?(f) }
    odie "clw binary not found in download" if downloaded.nil?
    bin.install downloaded => "clw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clw --version")
  end
end
