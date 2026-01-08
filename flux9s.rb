class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.6.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.6.3/flux9s-macos-x86_64.tar.gz"
      sha256 "6b5f6fae03aaa57eaa09cc04a6add9f13eee7b2087c3a606e427953b1db16e4d"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.6.3/flux9s-macos-aarch64.tar.gz"
      sha256 "c4ed22041db8be10afd79b651653c2683f4795dffc5beef81983d826515a1d09"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.6.3/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "3a4a8c448afff67953a33d63980f14fc7334ffb530588369972554c99dfe84e5"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
