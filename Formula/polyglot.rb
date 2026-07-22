class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.12.3"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.12.3/polyglot-v0.12.3-aarch64-apple-darwin.tar.gz"
      sha256 "4b350d30b6ef9a96ece09584d20233adba71d8bf8fa374367d7d324027541e2f"
    else
      url "https://releases.getpolyglot.ai/v0.12.3/polyglot-v0.12.3-x86_64-apple-darwin.tar.gz"
      sha256 "24c7de9d65d67d57566ca6bc26a2d84dce6d867f414860a21d368b3a3967c7e8"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.12.3/polyglot-v0.12.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "744f30d975e236d2b7d671818a34235a54a8be7a22112fe8e9af242ce288e60e"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
