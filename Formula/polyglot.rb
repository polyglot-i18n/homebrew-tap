class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.9.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.9.1/polyglot-v0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "07f2676e03e6f542653dfe0e31b23ed017100ec4d0c41fef7f10d549e5359229"
    else
      url "https://releases.getpolyglot.ai/v0.9.1/polyglot-v0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "39a3a832f392a79be02cf369cc3a20da770337b233f76f0aab943e1f61718d5c"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.9.1/polyglot-v0.9.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d4075178df351129907850d1f1d30932f3d6aa207218ad9e6590de177104c5a9"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
