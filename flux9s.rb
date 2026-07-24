class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "refs/heads/main"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/vrefs/heads/main/flux9s-macos-x86_64.tar.gz"
      sha256 "ba68a59bd404117bbc3fae8407a5e38595d57090620aa799e1c3a79444bc68ad"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/vrefs/heads/main/flux9s-macos-aarch64.tar.gz"
      sha256 "305a919a77bfca31ebb6b5aee0c001bff6f9e6dc68b61a61ab6b3e8108d9c908"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/vrefs/heads/main/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "b810b72d697c4c4798027eaabde0e9c8862c508cab3970f5a06a47f47a0e79d9"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
