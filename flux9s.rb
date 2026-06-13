class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.10.0/flux9s-macos-x86_64.tar.gz"
      sha256 "a460260634bca855993aeacfff3c96ce034b952c9fdae6995835584c683f4de8"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.10.0/flux9s-macos-aarch64.tar.gz"
      sha256 "32131a9096e750d2ef27f64d44ee57fa1266a3ce565474531f807ee6d1547323"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.10.0/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "1259c90b30a8c11f3e0e8a26c507356590084dd39d0c87a2b78cbb796347b702"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
