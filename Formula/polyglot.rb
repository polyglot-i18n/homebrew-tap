class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.8.3"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.8.3/polyglot-v0.8.3-aarch64-apple-darwin.tar.gz"
      sha256 "3e3988ef4fca66a0f6ba81f067061f6c4b57750f1cec2c0879b0309ebdbd5035"
    else
      url "https://releases.getpolyglot.ai/v0.8.3/polyglot-v0.8.3-x86_64-apple-darwin.tar.gz"
      sha256 "ed2b7355ae66cc845e743cea05c640909e6536a7813c22a9993e2ede375a8c3b"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.8.3/polyglot-v0.8.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2846fa7cd6afe8e3df84f4bea16219544de49150cfc190cf0c5cad76e53d7cb8"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
