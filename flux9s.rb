class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.7.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.1/flux9s-macos-x86_64.tar.gz"
      sha256 "03be205355965e0c888964d01368f16cf23031c0eb4cb8ec360c0b3ae21d21d3"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.1/flux9s-macos-aarch64.tar.gz"
      sha256 "8538a46ed9e995ba8ad8da3ce2d98a5719cdb39047db4a6c7757529010d70672"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.1/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "d8983eeeff12b4934914306cf639b2f45668901371929578f9d0222bb081ac6c"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
