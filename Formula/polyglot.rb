class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.6.4"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.6.4/polyglot-v0.6.4-aarch64-apple-darwin.tar.gz"
      sha256 "3a72b6883881b86dd4e453be9c07eaa97bbca749f2013cd4179a01b9fbecceca"
    else
      url "https://releases.getpolyglot.ai/v0.6.4/polyglot-v0.6.4-x86_64-apple-darwin.tar.gz"
      sha256 "91dd58278c35f50b3271d0289d5276ebde44ad85dedc4bfded5f3ab2fc2ca318"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.6.4/polyglot-v0.6.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6bb16f69efb56ac8fdcc13cd74e861c5c87b7f76ed137f50fbe4969a45747920"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
