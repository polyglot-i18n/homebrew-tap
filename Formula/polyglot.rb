class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.2.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.2.0/polyglot-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "a179b80162988574f74a0906718e45c4d63290c0f84ff67923e4a94ba56484b5"
    else
      url "https://releases.getpolyglot.ai/v0.2.0/polyglot-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "9eb846714187046e1fb816334bd408dd872b7132931f3993acee97defd4f1ce0"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.2.0/polyglot-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4a8bd83d8fd57eeb77ef68cc3185aea0a09633e364079058b75714ef088539cb"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
