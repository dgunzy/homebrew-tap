class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.12.0/flux9s-macos-x86_64.tar.gz"
      sha256 "2139f782c04bb359ebb0bb2d054be205f59384d05661753300741959371cfeda"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.12.0/flux9s-macos-aarch64.tar.gz"
      sha256 "fe3dfab4dab4622ed10a2ffc39e155684630a380edc2340ca65f864a5bac1d8d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.12.0/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "9b89827faf2a41421bc58ca09b306c7c6491c35f7be9b327a2782d6ae4f79c98"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
