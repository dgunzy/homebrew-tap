class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.1.0/flux9s-macos-x86_64.tar.gz"
      sha256 "4a369aeab54b8d91a6f7caa9336fe7c21a01abc5ba541caf9976c8de69da1a51"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.1.0/flux9s-macos-aarch64.tar.gz"
      sha256 "621b3e5b2f1a161808327c9f033304c9d4d168629103007aebf6ea17c4ddb79a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.1.0/flux9s-linux-x86_64.tar.gz"
      sha256 "ebb1160a0cdee4ad2531dc10430bbbad9c27200298842ef045006ab2752b15d2"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end