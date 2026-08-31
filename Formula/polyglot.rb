class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.13.7"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.13.7/polyglot-v0.13.7-aarch64-apple-darwin.tar.gz"
      sha256 "f33d6bb66733832828d9ab0e6ceca594bb1efcef673f5f35ea0d9416dfb10158"
    else
      url "https://releases.getpolyglot.ai/v0.13.7/polyglot-v0.13.7-x86_64-apple-darwin.tar.gz"
      sha256 "c766f9f6334fceb51537629e62a57bb3be3209b31cc7607ed5401565da803011"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.13.7/polyglot-v0.13.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "59fa9da1c4e83cba6d09183da67afcae3b7ccc0680a4e4140772c0f04ad1b39a"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
