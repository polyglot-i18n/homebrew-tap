class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.14.3"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.14.3/polyglot-v0.14.3-aarch64-apple-darwin.tar.gz"
      sha256 "d443ab6aa1750f307c91b7ec2d9872fe50151ed1335f230a0a85aece5ba404c4"
    else
      url "https://releases.getpolyglot.ai/v0.14.3/polyglot-v0.14.3-x86_64-apple-darwin.tar.gz"
      sha256 "e049b14beb9c23e2c326387cde408be6d678eb7b0d3e8ccb107e3ea0586616fe"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.14.3/polyglot-v0.14.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bd4a7227f3fdf4fa75a9197558b8c11b243cbc482654542e6c76a75255e1b983"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
