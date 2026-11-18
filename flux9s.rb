class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "1.5.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.5.4/flux9s-macos-x86_64.tar.gz"
      sha256 "a3717c7d11e0f72d513c992c3df62840d0f62ae0623d1624524d187dbe17168d"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.5.4/flux9s-macos-aarch64.tar.gz"
      sha256 "273bf3f84b2b87f0e32bbd2b16b401d046d7c9839556e825a89e9f13f1d95d40"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.5.4/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "15e16f33d82c8983718a7c3bd5ff89eef06a4e1c5369c6507ddf8040a1dd8e26"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "version"
  end
end
