class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.13.2"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.13.2/polyglot-v0.13.2-aarch64-apple-darwin.tar.gz"
      sha256 "9692a998fe33d887b7dc79d410b814f3527cbae0f26076ef5a7356f0311f79ad"
    else
      url "https://releases.getpolyglot.ai/v0.13.2/polyglot-v0.13.2-x86_64-apple-darwin.tar.gz"
      sha256 "f350e73830dab14f1a85e9f34538cce89eab366fb08d60a40a88d3077d59ba74"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.13.2/polyglot-v0.13.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f34848a5112e54274ed0e2b1a76c049548c47b51171ba9e50808e293d69a27db"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
