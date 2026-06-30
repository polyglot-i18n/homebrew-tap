class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.4.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.4.0/polyglot-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "6fadea46679a1bd343abca2494fca311056dead281f11c8f19ba2d296037ef4d"
    else
      url "https://releases.getpolyglot.ai/v0.4.0/polyglot-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "cb08c71167a14fbaef36e2b5fb8579a97973085d08963808346719e03f6ecbb1"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.4.0/polyglot-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ec0081f1585a64aca1537292b5cff697cc387d0647fd3858d384b9f5bf32ba4b"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
