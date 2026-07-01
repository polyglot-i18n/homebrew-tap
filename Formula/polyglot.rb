class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.4.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.4.1/polyglot-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "f2edd4c366a5ef6424cffbaaade7314ac752341eb6d66c1e011cc91bb244b629"
    else
      url "https://releases.getpolyglot.ai/v0.4.1/polyglot-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "996c5659613ada7f0e00f7aa60adb8e1abd2383ca82e7f2a3386111cf3e71ca7"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.4.1/polyglot-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "718643aca1860be9b97c0773718f2bb34c6d2fbb5a6ff904cee56310bac9193f"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
