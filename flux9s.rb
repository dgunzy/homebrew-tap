class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.8.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.8.2/flux9s-macos-x86_64.tar.gz"
      sha256 "ebedc68c6433a87d3e32b6e05d40d412c2671bc7e1e48875a32ca0b03e87c146"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.8.2/flux9s-macos-aarch64.tar.gz"
      sha256 "585e20a673ca6ae58d043ce7068d4f9c38d516d489458d7e4a00ab3c68a708af"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.8.2/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "c29f20aae04d8d70689a2dc0bd658e894ca05deb9f26914fe9a4db2e21529277"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
