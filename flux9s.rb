class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "1.5.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.5.3/flux9s-macos-x86_64.tar.gz"
      sha256 "5ab87433cc3e64a85febba9ff94d14e939e68fbc320ffe6eb24e7c08fcfe5406"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.5.3/flux9s-macos-aarch64.tar.gz"
      sha256 "967e3d5c5ff0cd1cbef63dd95f7cf5857481ebf2cebe174cff0ed0adc4fbb663"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.5.3/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "e961f367249d691dcea84e7c46e03fc98b17db5a437f0218318f4e3b314f10ca"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "version"
  end
end
