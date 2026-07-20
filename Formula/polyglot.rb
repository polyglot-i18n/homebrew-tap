class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.9.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.9.0/polyglot-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "aa65d978237705730028603c0f2205458e46ed6843796c3accf553aac1a31cc9"
    else
      url "https://releases.getpolyglot.ai/v0.9.0/polyglot-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "45f809c6708d1fac3727c7639da8ff45df8b9a62d5e09beb51c4f0ebbb3f6451"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.9.0/polyglot-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6f959d977f9b3a5e558b4d219b59b6fecf5e1e886d46ec15c4031d1c332838d5"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
