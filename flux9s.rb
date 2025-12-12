class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.5.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.8/flux9s-macos-x86_64.tar.gz"
      sha256 "cf871c6296696c85e77beaa4a157714420ddc54a2a87cb490a29d90eb9273e26"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.8/flux9s-macos-aarch64.tar.gz"
      sha256 "519e77bf7b1651472f297d2cd1a1874574c2cd667d0d9480c8e8249be994c20c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.8/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "60ed0ce283ff2634456b40b18bd7fd6d67c5e9ae0beaefe7da687464b6e6b6b4"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
