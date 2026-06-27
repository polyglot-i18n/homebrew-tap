class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.3.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.3.0/polyglot-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "9879b02d72678f594281a3af5c45db83d02613f13801a854a284697d1b21e3f5"
    else
      url "https://releases.getpolyglot.ai/v0.3.0/polyglot-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "1058ee98d58fcd01f8b593c6dda616dab545bf3c7bd7b88555041b70bb9361a0"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.3.0/polyglot-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "86b6bb57396ae20f06fea4b9bb0e3731b417f43f084a18b5680763eb004f922d"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
