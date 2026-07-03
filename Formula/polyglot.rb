class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.6.2"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.6.2/polyglot-v0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "9af30da9e1bc9db87f72bc0bdcbc3e63530e6336af5317308dfe6d10335ecadb"
    else
      url "https://releases.getpolyglot.ai/v0.6.2/polyglot-v0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "b1ef598f07cc2d4481179a550de042478d412c353c3ced64a81126584226b90b"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.6.2/polyglot-v0.6.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8e1f8dfa41659b394fd72a1617daa7dc34dfa90a2e70baece5c04df458a09a42"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
