class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.4.3"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.4.3/polyglot-v0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "b63b80b60cdb8b7e5f2e4b08bcb3eafe9b1c6f61a0163371b5b865635bf6d060"
    else
      url "https://releases.getpolyglot.ai/v0.4.3/polyglot-v0.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "0b846fcc34d4a7604543127c5a29847076916ccb4bb639a438f199ff692b1ce1"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.4.3/polyglot-v0.4.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c67edcffde4562d4d57cec4d9379ff16a2d9d5158fe26122789026f6302d21e3"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
