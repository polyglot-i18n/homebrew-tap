class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.1.2"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.1.2/polyglot-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "10535d856cb4b65e33fb4c3fb6db75d5618c103c1f8277ae20f3c116f8b024ca"
    else
      url "https://releases.getpolyglot.ai/v0.1.2/polyglot-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "842beaf775448e9d34563e085b436f95920cfffedb7c224fedce3526ff4593e8"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.1.2/polyglot-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e843be0f284099bf4a8723c5f729a6f15d0a4ff22d418b78592b431297ec73b5"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
