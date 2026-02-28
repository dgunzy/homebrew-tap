class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.7.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.6/flux9s-macos-x86_64.tar.gz"
      sha256 "0d68a7d78b0a1352923f06d9dd9a700605e6e91c7ffe43f29a1d8a1b686d8183"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.6/flux9s-macos-aarch64.tar.gz"
      sha256 "24f1e9c15bddf3b53bc29ca9cf906265d1f5862b91605451a8704156fa3660e2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.6/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "fb2277256669d4346fd63b8399e4ed97107fcdb4c10769760f9877181229d354"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
