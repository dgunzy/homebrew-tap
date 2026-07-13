class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.11.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.11.1/flux9s-macos-x86_64.tar.gz"
      sha256 "e70436fadfa43112d4bfce2750015a3be47e448c1e7a66fb5c0f12334035cf48"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.11.1/flux9s-macos-aarch64.tar.gz"
      sha256 "7cde47945f314697d46a5b1e4831474c4d78a7f7ad0af1b7c9ce71dccce090a9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.11.1/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "7b0e66fee4bc710f384578562e818baec9fc6b001b5743b74b2d970950e91923"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
