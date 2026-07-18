class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.8.11"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.8.11/polyglot-v0.8.11-aarch64-apple-darwin.tar.gz"
      sha256 "79fe01062d7fbe396002c198184678c0ce64f6f98d6684f793559a009edc0273"
    else
      url "https://releases.getpolyglot.ai/v0.8.11/polyglot-v0.8.11-x86_64-apple-darwin.tar.gz"
      sha256 "68aaa5254a24a255433d4f648d0d467895b2377aa2c1d9bb441ba0a240ada494"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.8.11/polyglot-v0.8.11-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "170c0da2b694691ac9b6fd403613c338f333965b41e23b24779df1def72c69c7"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
