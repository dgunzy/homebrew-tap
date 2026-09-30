class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.2.0/flux9s-macos-x86_64.tar.gz"
      sha256 "438e184d1cef79b981a1aabfc38d19c4f04c96a56b5fc4543307e08d871ac6d9"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.2.0/flux9s-macos-aarch64.tar.gz"
      sha256 "17b25b8ec904ead7fe87c58fc1531fbc3563cc8404d6d2f8f4b24266aba79149"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.2.0/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "244b78c1db16cc0c06a95f82573633ebcf23a14f93fd99f0f28e3567afea916c"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "version"
  end
end
