class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.8.5"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.8.5/polyglot-v0.8.5-aarch64-apple-darwin.tar.gz"
      sha256 "79d23441c568f4369762131e8254c5e69f4d92c2bfdb97461fcc09fc7b105ab8"
    else
      url "https://releases.getpolyglot.ai/v0.8.5/polyglot-v0.8.5-x86_64-apple-darwin.tar.gz"
      sha256 "5e911329ae0f26e9d9d7679c9846025a71ae21a020c5183e5ef3e9ac8d920478"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.8.5/polyglot-v0.8.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f1a63ccda68240141e7217f72ab1d965b7deb3282bf72004d6c21115736991d6"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
