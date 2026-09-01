class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.13.10"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.13.10/polyglot-v0.13.10-aarch64-apple-darwin.tar.gz"
      sha256 "3bc52c50c3661cb263aedbe8ceeb436337da95545730f531f643028cc45c2297"
    else
      url "https://releases.getpolyglot.ai/v0.13.10/polyglot-v0.13.10-x86_64-apple-darwin.tar.gz"
      sha256 "5c3f88d7c183381ba055dd9832e4dca62763bc07e702cddb7ecb521d450ddd96"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.13.10/polyglot-v0.13.10-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a7eaf33242b9f89ad240dcb821818e6a9dbcf84e66bf33937a8e3885f31a2302"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
