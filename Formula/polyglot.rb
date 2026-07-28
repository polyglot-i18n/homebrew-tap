class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.13.3"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.13.3/polyglot-v0.13.3-aarch64-apple-darwin.tar.gz"
      sha256 "74f37aaecda1460af2b153186f6d83e9d541ebf796c485703c00a5b4e29e341a"
    else
      url "https://releases.getpolyglot.ai/v0.13.3/polyglot-v0.13.3-x86_64-apple-darwin.tar.gz"
      sha256 "6d888738ce7eb0cd765ac34d88aa396a06503cbbcd43ff32204e8bc6a379ef14"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.13.3/polyglot-v0.13.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8c35bdb52cbbdce28e3c1dd20f8b13f68711de3e5d956ec28204af6e4bae748a"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
