# Seed formula for the public tap repo (polyglot-i18n/homebrew-tap).
# After the first `v*` tag, the Release workflow regenerates this file in the
# tap repo with real sha256s — so this checked-in copy is just the reference /
# initial seed. Binaries are served from Cloudflare R2 (releases.getpolyglot.ai),
# so the source repo can stay private.
class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.1.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.1.0/polyglot-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_ARM64_SHA256"
    else
      url "https://releases.getpolyglot.ai/v0.1.0/polyglot-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_X86_64_SHA256"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.1.0/polyglot-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "PLACEHOLDER_LINUX_SHA256"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
