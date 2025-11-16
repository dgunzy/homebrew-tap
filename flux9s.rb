class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.2.0/flux9s-macos-x86_64.tar.gz"
      sha256 "59c501f057723d56849f15de158d758ef6f7c8d64c26d2cd5b6ae81b2d417660"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.2.0/flux9s-macos-aarch64.tar.gz"
      sha256 "3b0636a15b94679b180b6a9b0a9693293db07051c58416897ce0859f92df7e82"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.2.0/flux9s-linux-x86_64.tar.gz"
      sha256 "73c11a1f3bbb823f1c86b5e0d430eb0614a80c7c7083e74380bb8632559df366"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
