class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.7.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.2/flux9s-macos-x86_64.tar.gz"
      sha256 "5a50b15c83d73730c17f899c0a30f69e7ea72ae73d20c9449e6f6fe620f68d56"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.2/flux9s-macos-aarch64.tar.gz"
      sha256 "e583b7673dc1b31b9df21b050bfb65c0465360f30f22626f87f790921fee131d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.2/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "33f0265b44ef6e33cb277dc7bc10fe05878141b980464d8247325121e9f460dc"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
