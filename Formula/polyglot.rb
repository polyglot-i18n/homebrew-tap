class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.7.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.7.0/polyglot-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "3fa3cfe23c25e8e8a9565c16862a2f76525ee5c0eae29a599521e345e3480468"
    else
      url "https://releases.getpolyglot.ai/v0.7.0/polyglot-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "57b6835dd4708a76b491a930a19d0ed0ae8941af4d7a4060b57eaa8a4992cb72"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.7.0/polyglot-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "881fdcc6057a987ea894cc918bf2880baa06f63da408cacb42db936845c28d71"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
