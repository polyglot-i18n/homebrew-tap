class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.1.6"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.1.6/polyglot-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "6b9fc83e781e396f74a077f9479ed3e7d7dbeaf014a766a8ea80946d6bd0b12b"
    else
      url "https://releases.getpolyglot.ai/v0.1.6/polyglot-v0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "a751daea4a2fb08654e36514ed39ccb18cb7370ef57c9a55f11319e733518039"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.1.6/polyglot-v0.1.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "94f1ccccff187dfe8ea0cc6d9657f1440deb69026f87d5dc4e6029ddc43b9ccd"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
