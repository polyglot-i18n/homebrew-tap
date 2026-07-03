class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.6.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.6.1/polyglot-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "12aa3dac82e8431351e5fbe3f80bf09795e1d75c03b1a596f7d3c0a9a13387ec"
    else
      url "https://releases.getpolyglot.ai/v0.6.1/polyglot-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "e00be6d02a2a67d9bd17d10380dee3edc9d26534812cd916d878bb0e4b8b8efc"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.6.1/polyglot-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cf1412eca6fde1549d8e5d0304eb6927430ce05f4c8b1305aaf19952c70c9716"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
