class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.13.9"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.13.9/polyglot-v0.13.9-aarch64-apple-darwin.tar.gz"
      sha256 "194a8b6153ab4550d8c1ee5a331ac24cd66de208a183998a1f1ec465afb012af"
    else
      url "https://releases.getpolyglot.ai/v0.13.9/polyglot-v0.13.9-x86_64-apple-darwin.tar.gz"
      sha256 "f6bd68716ac8c357f82542750731059b58ca4c65931034bc1f1c37853e860113"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.13.9/polyglot-v0.13.9-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fe9e233f104c433e36ba2c2da4909eef3e93b06dd15f8f2ff887e76b0d39c05a"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
