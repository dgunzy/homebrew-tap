class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.1.0/flux9s-macos-x86_64.tar.gz"
      sha256 "5d80960de560b6db187c848fbf77b16eea5fc2cb791c94de67291c620d0c111b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.1.0/flux9s-linux-x86_64.tar.gz"
      sha256 "454909d2bdafe6b69cbb231b88173c4423e307640b94a3230dd1d23bddbd9493"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end