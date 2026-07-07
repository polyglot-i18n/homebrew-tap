class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.8.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.8.1/polyglot-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "bbe3e4e208aeb58b1617e85ab6faf723903fcb92f722a63c6d6d4dfa75fb8aa2"
    else
      url "https://releases.getpolyglot.ai/v0.8.1/polyglot-v0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "3084f38374b397d51d90df2055f9663e01e93bc6e4d58d51d67bc908dae5a97d"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.8.1/polyglot-v0.8.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c93360481a50d8cf9a77162407f0c77525af62dc81962117829bd8543c049aac"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
