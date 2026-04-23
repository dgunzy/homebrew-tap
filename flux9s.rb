class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.8.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.8.3/flux9s-macos-x86_64.tar.gz"
      sha256 "c5bf5945c05288c4717cfd184feda943746f6d3ea6a294803a08cfc5646b66ec"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.8.3/flux9s-macos-aarch64.tar.gz"
      sha256 "b8bf560fdc473619e0b2e7ef5a6dae4d721b2b3074ee562a0c8d5314d601fd84"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.8.3/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "7ea5a73555ead2880d29eae91517b15b0780582f8fd58394716e7ab1994fa674"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
