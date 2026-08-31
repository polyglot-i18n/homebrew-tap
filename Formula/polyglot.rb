class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.13.4"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.13.4/polyglot-v0.13.4-aarch64-apple-darwin.tar.gz"
      sha256 "4b4f23d9da13b7427d29d889981387f51726216d01405b55f0088aa84cbae96e"
    else
      url "https://releases.getpolyglot.ai/v0.13.4/polyglot-v0.13.4-x86_64-apple-darwin.tar.gz"
      sha256 "bbfa5de2bed1a296b8e808551d8005e33889909d61ab6712b667337dbfb9738a"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.13.4/polyglot-v0.13.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b96f09a12dedd0ceb98afc34798ee981e3ec2e062c2f0b82ea9db48791a5e249"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
