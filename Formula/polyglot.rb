class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.13.8"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.13.8/polyglot-v0.13.8-aarch64-apple-darwin.tar.gz"
      sha256 "4810eb4d7b393d47a231e7a9cfb62347ea235eacda02e98941a78f237c3f8518"
    else
      url "https://releases.getpolyglot.ai/v0.13.8/polyglot-v0.13.8-x86_64-apple-darwin.tar.gz"
      sha256 "f23c82b72561b1a0932077270b98e38ce7f7e618fc4c41e967bb48479c7cee12"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.13.8/polyglot-v0.13.8-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "58c801e981e4b4cdc1e3b227056378040856d6dcd6779df2d035a9d70d31b03e"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
