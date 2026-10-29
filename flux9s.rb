class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "1.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.5.0/flux9s-macos-x86_64.tar.gz"
      sha256 "ed719aca1630fecdd1c9d3cc394b44b149e16bf6e7334735152dc9dd287ec4b7"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.5.0/flux9s-macos-aarch64.tar.gz"
      sha256 "383b6b94c01d75ba166319f13dcb9468d369cf9e61be4d0af959c32fbd276677"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.5.0/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "753caf12f2f94bde7657a5fdb3827173b6cd7fcf3d092fdd8921588ac7ef4b3c"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "version"
  end
end
