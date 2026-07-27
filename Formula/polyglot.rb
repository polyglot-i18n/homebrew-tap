class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.13.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.13.1/polyglot-v0.13.1-aarch64-apple-darwin.tar.gz"
      sha256 "ba3cce8ba7721386a03585057078e1fe726f29f5f416d823fab18397edbb6892"
    else
      url "https://releases.getpolyglot.ai/v0.13.1/polyglot-v0.13.1-x86_64-apple-darwin.tar.gz"
      sha256 "a89b0f5875ced2278c043a9331659d08a54aa33f2ac1068cb6672f17740e8aed"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.13.1/polyglot-v0.13.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d4853e42098cb58ad94272a1bf1643b8ec3366f078cbada72c1b658fab3e12b3"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
