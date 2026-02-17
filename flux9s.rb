class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.7.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.3/flux9s-macos-x86_64.tar.gz"
      sha256 "9a358c1513fd68980f9ca9966aa3c8ea32f9cac1d7b15dc4c544ac4325358c3a"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.3/flux9s-macos-aarch64.tar.gz"
      sha256 "3cd9a40750c5fefca9b803f2eee53bf124b3d2ca33a77bfb7004d3de4fa24d4d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.3/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "9b28d394c23e5bfcc8c65d53bb188673f3544588e411949fcb3fd0f851a53603"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
