class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.6.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.6.2/flux9s-macos-x86_64.tar.gz"
      sha256 "653339088704dd8a3c9593930378e44befb7e47c1684710bc0efe8d82fe4b844"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.6.2/flux9s-macos-aarch64.tar.gz"
      sha256 "67131e5b32250a42737e384952847783745dc12697fe6939dae9068394c5e9c0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.6.2/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "158ced392d6477dbb3dc477a2af8efd271a153c3efa5a2ef7c55e217f3b511b5"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
