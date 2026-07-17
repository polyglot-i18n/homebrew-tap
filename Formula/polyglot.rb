class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.8.10"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.8.10/polyglot-v0.8.10-aarch64-apple-darwin.tar.gz"
      sha256 "f2e1e285b32cdf138d14f5108a004c34bc506859bcedb92ca47e7c009b0115d2"
    else
      url "https://releases.getpolyglot.ai/v0.8.10/polyglot-v0.8.10-x86_64-apple-darwin.tar.gz"
      sha256 "7c4219bfc79130acef16f6d53141a14f950f602a3aad5129ce256a58983e635c"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.8.10/polyglot-v0.8.10-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f083eeff889e7641b428555a2fe8036ae1bef0452a3e1ea12c7532c368d83bc0"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
