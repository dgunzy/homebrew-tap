class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "1.4.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.4.5/flux9s-macos-x86_64.tar.gz"
      sha256 "a89e91947cb4f2abeb3511a7108ce5521fb85ebc65bfc867ec731590519fbcf9"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.4.5/flux9s-macos-aarch64.tar.gz"
      sha256 "9a1b17461965318f909b8e8b7ae883967d84d03fad8ed0c05ea59e02b786bb7b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.4.5/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "c6975db21f9653b353c8b51354d50c7790509e07d73d67f102ab6ced47b1aeec"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "version"
  end
end
