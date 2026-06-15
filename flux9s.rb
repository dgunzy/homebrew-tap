class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.10.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.10.1/flux9s-macos-x86_64.tar.gz"
      sha256 "82ff77e6a4cd86899c29accc32a5ce37e43fd7380ef17960d9e0d207ddbd72b2"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.10.1/flux9s-macos-aarch64.tar.gz"
      sha256 "af58c84571c86e80a298ca9d1ed5458062e52875b93914e17af31f3e949c2f54"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.10.1/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "86909a7f93e3280fef8711f958f6d9f2bfeba1ec9f3af68e342957b6e3123739"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
