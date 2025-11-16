class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.2.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.2.4/flux9s-macos-x86_64.tar.gz"
      sha256 "0a50b305e8b7c312fe7f05e21b1079c1c30a19d247f11654fab35dc4d46932d7"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.2.4/flux9s-macos-aarch64.tar.gz"
      sha256 "b2489b3a23afed1153fdbb605d98261828f271c3230290149d08168b1e3cc7c2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.2.4/flux9s-linux-x86_64.tar.gz"
      sha256 "58e0c50501c60bc32134a0edbbb5511bafb479a6618aed1d11ee6e528f0e4475"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
