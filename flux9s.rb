class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "1.5.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.5.2/flux9s-macos-x86_64.tar.gz"
      sha256 "8913ee6507641d5d940783b3ae753e7d3d4a088be47630ac0755b796c878da4a"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.5.2/flux9s-macos-aarch64.tar.gz"
      sha256 "219f030464acd87e8f36ea7972e5813a93e9272fde38dbcbda250389b4d68d16"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.5.2/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "2eadd9c965d9c5f1435f23c79decd8c63534e5a86f9124343b13238a0534a615"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "version"
  end
end
