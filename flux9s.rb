class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.7.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.5/flux9s-macos-x86_64.tar.gz"
      sha256 "6c452a367093e60b7096fa67fab488298ea484ef624a624e81bbd0807a4a6fd7"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.5/flux9s-macos-aarch64.tar.gz"
      sha256 "d024d11490bb3498e78de8f1ee8384615476249f837e0bfe29a1bbfc0a61c06a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.5/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "02c373e9e3f556105a76a24bc66c7aafc6dd258f9914ba59928de1f3461d9dd9"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
