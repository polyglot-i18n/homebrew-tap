class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.1.3"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.1.3/polyglot-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "4dd6f27b1d4de66756cbb0e8d8dbfe61fbd0ed39b903a1aa27f7703244a2b610"
    else
      url "https://releases.getpolyglot.ai/v0.1.3/polyglot-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "c1d72387f4fcdd5c009305ab5feb637a4ea4757443fd18ecfab24a0bcfef6bd5"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.1.3/polyglot-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5f1d3d4d542ddf4356902772ca850d8c233fd5e3545ac80f7c851b53beb5f304"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
