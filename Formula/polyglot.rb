class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.4.2"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.4.2/polyglot-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "2aceb140a976a3a286413c62f6b083c4588a9cc8b188df12c0e6778a9c50e2ba"
    else
      url "https://releases.getpolyglot.ai/v0.4.2/polyglot-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "ff5f8060d0e6f09f6839402fa6c907fd749e3670cd3bb709132455118fa37d61"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.4.2/polyglot-v0.4.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0c41cf17fafcc373b99258119c54545c1af35e3683a0da069c992e7a5f5d2299"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
