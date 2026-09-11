class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.14.4"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.14.4/polyglot-v0.14.4-aarch64-apple-darwin.tar.gz"
      sha256 "3b60a27f4dba82de2c5ca44ffd8d0d119faaf2f39cb485f2a746d2a575848bc2"
    else
      url "https://releases.getpolyglot.ai/v0.14.4/polyglot-v0.14.4-x86_64-apple-darwin.tar.gz"
      sha256 "934bfe6196484836375f9bd4ab561f4b576e162b1c6d658076cf24d1b62c3be2"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.14.4/polyglot-v0.14.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3a236a41e84ce23157797217a83d5581a7ddc71af299d0d4ad0b76fecb493b4b"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
