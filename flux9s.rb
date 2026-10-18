class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "1.3.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.3.1/flux9s-macos-x86_64.tar.gz"
      sha256 "9bcee96e58697e88b33f05c3f615c68d044167fb1c1c0b2653d4d4005144451c"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.3.1/flux9s-macos-aarch64.tar.gz"
      sha256 "e78cd2367a1528353f4d9635e898efc728c5c9a7ce354782c70dd8924ec6542f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.3.1/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "14cf5fd01cbdaa062e95259ea5b0883e6847b4e7b6efe1c5a5be9a4e842fa0c4"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "version"
  end
end
