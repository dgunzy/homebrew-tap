class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.6.0/flux9s-macos-x86_64.tar.gz"
      sha256 "4bb2ad82f66798679d436c8e4eba6090ca29d18a8e99c2213a6b2773f9d11d06"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.6.0/flux9s-macos-aarch64.tar.gz"
      sha256 "26b222e321f6ec703d18110f904617cd5240a76666cda66e657b8a43d86b3970"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.6.0/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "c1dc5c3dea769b85d0aead46c50911ea615fc1de29b502eb03287820b8bcd31c"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
