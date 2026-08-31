class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.13.5"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.13.5/polyglot-v0.13.5-aarch64-apple-darwin.tar.gz"
      sha256 "05ca198ba4d651aa89d785f6881d443e57f65c2cf1d1b839ef87833163be3583"
    else
      url "https://releases.getpolyglot.ai/v0.13.5/polyglot-v0.13.5-x86_64-apple-darwin.tar.gz"
      sha256 "94d2154856fd4c199d88c5bdd96d6e39ec2091461b24772c3d3e9aebedbee5ff"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.13.5/polyglot-v0.13.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1ec2f243e8321d37ac9fc57d7b659fed407eea4a1a221fff3d63137ae7554f93"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
