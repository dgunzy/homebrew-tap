class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.5.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.3/flux9s-macos-x86_64.tar.gz"
      sha256 "c6690be0da2472aea3752c256d7bd527ec855b147f1fe3c52f2d6ae878e58872"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.3/flux9s-macos-aarch64.tar.gz"
      sha256 "dd78786188403a04ff662be7176a897d20a179552850867afa58a1cb35e7a9fe"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.3/flux9s-linux-x86_64.tar.gz"
      sha256 "d107cd7965a7eac75d0e1a0929020dcc07821d6673133c823b5a80bb192df5fe"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
