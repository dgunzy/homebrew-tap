class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "1.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.4.0/flux9s-macos-x86_64.tar.gz"
      sha256 "b50825e374c4353f764c32ca261d9506297f66ae132b877e854448ee3a2b13bb"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.4.0/flux9s-macos-aarch64.tar.gz"
      sha256 "0a8e7b021dbefe0f42def1867ce61fdb073c6f6f1c7789fc1c7ab06ae0a7988a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.4.0/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "1487695f991fbfddec3b9b5b50b77db9a9151ff0d799d50091a34e260280e4cc"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "version"
  end
end
