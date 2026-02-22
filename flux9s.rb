class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.7.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.4/flux9s-macos-x86_64.tar.gz"
      sha256 "773b106e1fee633b9e064a09e76b8153abce7272866ae9db07630aa24e07d1aa"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.4/flux9s-macos-aarch64.tar.gz"
      sha256 "c43d2d6fd9d39d4f927266a76aa990f729001bf47607ec12d89fd14fafbe0010"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.4/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "416487696666c1e0557c76177ab76c356b1364d2ffe93a250994ef5069f706ab"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
