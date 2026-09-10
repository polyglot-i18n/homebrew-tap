class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.14.2"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.14.2/polyglot-v0.14.2-aarch64-apple-darwin.tar.gz"
      sha256 "5bf38a6f54b852833a027fafa442385a35547a26797542ba94f28e4e87ab3a58"
    else
      url "https://releases.getpolyglot.ai/v0.14.2/polyglot-v0.14.2-x86_64-apple-darwin.tar.gz"
      sha256 "1ce034ef52104873c1737fd8bb7fd53459c9675ad8467c91cc339e16f7efe850"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.14.2/polyglot-v0.14.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "12f350be7856cf5dff3242a2e2750846f10ff59a7698a8a8044a3fbb1e3dcbf6"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
