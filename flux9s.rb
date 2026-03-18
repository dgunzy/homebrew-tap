class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.8.0/flux9s-macos-x86_64.tar.gz"
      sha256 "00c9201b2f4e53b8d681e252ca970a3020bd87a281dba5c80b583bca7e3fc18e"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.8.0/flux9s-macos-aarch64.tar.gz"
      sha256 "95ef7277a70f61bc8affec5c19e73bf8e2552255a61b1eee32d0c91d3513406a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.8.0/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "bbe3ac9cfab5eb6f18d262908a97bd28f6f6dac50ab45b8b4e53acb95bf26222"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
