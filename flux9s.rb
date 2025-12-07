class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.5.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.4/flux9s-macos-x86_64.tar.gz"
      sha256 "0f83d4b380e11c002e4d194eecbb4774c7e1f6778027b8f59a2421486533121c"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.4/flux9s-macos-aarch64.tar.gz"
      sha256 "be518e0d50a11c90f02fd7a6c315a308e210c05ae46e6e6190900767d74e595d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.4/flux9s-linux-x86_64.tar.gz"
      sha256 "8b8145d1ba38dab7abab6e5efa3da266e5d1c1c0ee44af67672afd880ca74a3c"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
