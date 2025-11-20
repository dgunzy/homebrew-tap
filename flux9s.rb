class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.4.0/flux9s-macos-x86_64.tar.gz"
      sha256 "5ef30b74f4991d558902816e4035638f7b58025cb135f0457259ca398bf7108a"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.4.0/flux9s-macos-aarch64.tar.gz"
      sha256 "a1027b564e8b0324922cf2d9f4704ebe0e2c78e634b588e0d8d34e577a293c60"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.4.0/flux9s-linux-x86_64.tar.gz"
      sha256 "ec337c8c698f4d3e16cb91b78ae1ee2ba305269dbb16a097fa1b1f06c8d7acaa"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
