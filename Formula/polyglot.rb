class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.13.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.13.0/polyglot-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "9dff2c6bedb68b130ae00f34aa899fccb5704001416201f1cf25a9766c18e01e"
    else
      url "https://releases.getpolyglot.ai/v0.13.0/polyglot-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "e8046b99701c74ff892e49e3b0baba7b82a01e5744060b58bcf983a7e64607ef"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.13.0/polyglot-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "13deb957a523d981a5174d0528d28a385d59b0b7a54aaa2ea5115b0f709e6ca9"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
