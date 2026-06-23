class Polyglot < Formula
  desc "CLI-first i18n tool — detect and translate untranslated strings with AI"
  homepage "https://getpolyglot.ai"
  version "0.1.5"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.getpolyglot.ai/v0.1.5/polyglot-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "1bbf6a75691c8e4284e464ae992a5a74313d981617f9d6328fb74183e87b1c20"
    else
      url "https://releases.getpolyglot.ai/v0.1.5/polyglot-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "bc63fefa2ab9dddd1538a4f7ec930930bef5ce9c65a63ac4682445de9961696d"
    end
  end

  on_linux do
    url "https://releases.getpolyglot.ai/v0.1.5/polyglot-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5f7138de23de8d6aec6cb45eea2ba423010371fe3e79580dbeae5b6b1fb5fa3c"
  end

  def install
    bin.install "polyglot"
  end

  test do
    assert_match "polyglot", shell_output("#{bin}/polyglot --version")
  end
end
