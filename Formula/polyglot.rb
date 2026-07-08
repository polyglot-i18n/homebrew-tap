class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.8.4"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.8.4/polyglot-v0.8.4-aarch64-apple-darwin.tar.gz"
      sha256 "be9b248264095bbbe2b9d64ec04d2f48ba67efe1ff6e85dcee83ec85b99ea1a3"
    else
      url "https://releases.getpolyglot.ai/v0.8.4/polyglot-v0.8.4-x86_64-apple-darwin.tar.gz"
      sha256 "536660f8f47cdc83630c13db8f09d2303fc7b2932f9bc86dbc232c504f4dcc9c"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.8.4/polyglot-v0.8.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "162d9c99378d09c76bde1be3d6f38721bf2da5b23c13c849dcd62b2090a34732"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
