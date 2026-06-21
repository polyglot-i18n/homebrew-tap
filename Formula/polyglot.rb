class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.1.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.1.1/polyglot-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "13a43842b6d78bb52cdfda58bbadb04df2ccffdbae39f977017a7e9b74010717"
    else
      url "https://releases.getpolyglot.ai/v0.1.1/polyglot-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "17ffa823e392b47ea583b05e41f681f6df42ad2df1c09492d3b3fc4949c24fd3"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.1.1/polyglot-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5e54971b49c698c8b562276a4a267f062376827cbb4b91d94aefae33d863c494"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
