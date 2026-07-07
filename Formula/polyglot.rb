class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.8.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.8.0/polyglot-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "56843e603591d8a21073f463ff5578d7c5b7c05d6b591f91f54d3fa4457a7571"
    else
      url "https://releases.getpolyglot.ai/v0.8.0/polyglot-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "fda72d671e3e6cb8c87e4c71f24af50161d712f02efd82b45cce0bee3472d609"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.8.0/polyglot-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e15b17ce555f046abb5302ad6c9b0c523395f0368d2c5bd325172b56f1ac630f"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
