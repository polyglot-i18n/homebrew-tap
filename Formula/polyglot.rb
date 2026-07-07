class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.8.2"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.8.2/polyglot-v0.8.2-aarch64-apple-darwin.tar.gz"
      sha256 "a25a9d285cda7be1544d4c3c2c04cfc51b32ee53b51dcbd76adc3d43da844ecb"
    else
      url "https://releases.getpolyglot.ai/v0.8.2/polyglot-v0.8.2-x86_64-apple-darwin.tar.gz"
      sha256 "4d9523ac4fc57b28b3c4a1f109c5a9ae51bb750cc10ebdd259b21e062e9ad153"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.8.2/polyglot-v0.8.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9e28df26e84f011099086bcdd65d66961c997a9735d8814afc2792cea6903e93"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
