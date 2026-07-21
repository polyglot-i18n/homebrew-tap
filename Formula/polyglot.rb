class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.12.2"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.12.2/polyglot-v0.12.2-aarch64-apple-darwin.tar.gz"
      sha256 "fb3b85a3c57173ec4157aca9d3620d635c6e6ddda302ba87dba97f1c688ae667"
    else
      url "https://releases.getpolyglot.ai/v0.12.2/polyglot-v0.12.2-x86_64-apple-darwin.tar.gz"
      sha256 "cc7d22d80c577ddb128d6128567ef0c1b1a3b2f3610cba9daee69ebf8020d74b"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.12.2/polyglot-v0.12.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fa8950e4e8c6e6b17dc7c7780a0977d229ec943fdbbe9426c56a788f656b7656"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
