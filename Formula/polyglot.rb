class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.8.9"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.8.9/polyglot-v0.8.9-aarch64-apple-darwin.tar.gz"
      sha256 "bc2228a87f938b53d16e756778a836252f85774c73f34a4dff66348738494d39"
    else
      url "https://releases.getpolyglot.ai/v0.8.9/polyglot-v0.8.9-x86_64-apple-darwin.tar.gz"
      sha256 "ae7b47276b47cd73a38849476e3e8e45ae680ab071af3b9a238af29804edfd15"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.8.9/polyglot-v0.8.9-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b738a704d694b55a6de2247e3eaf553daf7c468b1b30e4f7fae45e0bfedb0d4b"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
