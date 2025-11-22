class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.5.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.2/flux9s-macos-x86_64.tar.gz"
      sha256 "3cb7ab4e045bce8b472ba6c7c50b6b20db0d512158caef0c7e48c518d2429e67"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.2/flux9s-macos-aarch64.tar.gz"
      sha256 "fe08259840ea7790254c53f355f6ea62eea0541b801cdf6e55777b4c2ce0e22d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.2/flux9s-linux-x86_64.tar.gz"
      sha256 "c193a86205608d874e7998e4e5c4ed239799841f54abd1b482eacbf910bc8bf3"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
