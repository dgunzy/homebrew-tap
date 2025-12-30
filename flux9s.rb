class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.6.1/flux9s-macos-x86_64.tar.gz"
      sha256 "10856390078ec06165caf873839533dccffefb62893c47a57f194c517eede4fd"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.6.1/flux9s-macos-aarch64.tar.gz"
      sha256 "93e4583e1cdf2a7f3dd201844974f7cc271492b7ee49a53e50ab2c4cc9274a79"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.6.1/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "17c6136c76fcd4d5d05f7538ee3f2dbc79dcdf7e7fff73b6331570cc857de66c"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
