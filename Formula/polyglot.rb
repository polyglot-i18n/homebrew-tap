class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.7.2"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.7.2/polyglot-v0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "779535ad7549e3431c065deccbf271f63b803e184e72f483f42bf8742686f2b6"
    else
      url "https://releases.getpolyglot.ai/v0.7.2/polyglot-v0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "4a4e4c9da63b783dfe8b541fe5b302a867424e9a62687458265f0eef08d5ec1a"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.7.2/polyglot-v0.7.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4489323ded94f6ffe6769181be61d25d0dd234e13f0860fd529b54679d2be1a1"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
