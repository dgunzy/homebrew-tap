class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.5.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.11/flux9s-macos-x86_64.tar.gz"
      sha256 "b549517449b85fc1188ecb379232fbe8983fe90c43a224e82178b33ef0a88470"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.11/flux9s-macos-aarch64.tar.gz"
      sha256 "b84567907d75913ca18ec67521c998c0147d62caeb764e4145008bd0b3221952"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.11/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "378687b5654c1db6fcdd7e698c80fe6732d03264ccdf7232ed072a7c0b55d314"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
