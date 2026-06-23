class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.1.4"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.1.4/polyglot-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "9499e1cad1db5a2226b30a2158dcdb84b85a4ad32e1601832ff13c95bb422174"
    else
      url "https://releases.getpolyglot.ai/v0.1.4/polyglot-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "99d00a50060a6096eebe08a7212e36705b2dc9135bfed08ad379be5dd64b86c5"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.1.4/polyglot-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3e3f086612582b08869c88e67e724cdfea987188bd23a4e813dfe3f62077edf9"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
