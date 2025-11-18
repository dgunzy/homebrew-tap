class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.3.0/flux9s-macos-x86_64.tar.gz"
      sha256 "09e651d7fa7765ba90aecd67a4b079224b668ea2f3b86299eb6f025798b573e9"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.3.0/flux9s-macos-aarch64.tar.gz"
      sha256 "e67402ced884831843b4a6d5aee511f66a511a3e839be9d50c74e65acf78a985"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.3.0/flux9s-linux-x86_64.tar.gz"
      sha256 "c9df3149102a10ecdd5bd65ab0f8da5aeb50f528c2f003025ca5385a5965a32e"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
