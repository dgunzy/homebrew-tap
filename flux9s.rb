class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.9.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.9.2/flux9s-macos-x86_64.tar.gz"
      sha256 "33bb83a8888fd29cb08b3d64845181d1c01056cf8b70d69603613037c932f6ac"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.9.2/flux9s-macos-aarch64.tar.gz"
      sha256 "81729aaefae337e0141c187ff853c744981ab97734529ba8cb0eb8136f154be8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.9.2/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "5082da16002aff675c8e0fa3dd22810c118aee581b1a5926f36b518d07c9ec58"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
