class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.6.3"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.6.3/polyglot-v0.6.3-aarch64-apple-darwin.tar.gz"
      sha256 "9fa83ef063d4d12d1a27da61cf1c7156957a6257f57ec01571a4448806f7f9a5"
    else
      url "https://releases.getpolyglot.ai/v0.6.3/polyglot-v0.6.3-x86_64-apple-darwin.tar.gz"
      sha256 "754ba993d11b541eb462ca9576c0ad6f724aedca36ce3546556c1c0ede13de88"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.6.3/polyglot-v0.6.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e488043653ac3a55c2219b93edc23acc617fe17c82652d1246a875d06fc579ad"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
