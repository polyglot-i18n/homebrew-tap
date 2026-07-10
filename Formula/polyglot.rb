class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.8.8"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.8.8/polyglot-v0.8.8-aarch64-apple-darwin.tar.gz"
      sha256 "c40a28f1e919a000b5a62b68f4266033a49ea23beafd4210d9728415756118bb"
    else
      url "https://releases.getpolyglot.ai/v0.8.8/polyglot-v0.8.8-x86_64-apple-darwin.tar.gz"
      sha256 "35313b963a415eb1715eadfa156785148f3e4f184b7141b23240e5436175525e"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.8.8/polyglot-v0.8.8-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a40486b21b6ae71ea23be75fe944034386423464cf46f0932290312754a6dd8c"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
