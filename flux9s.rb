class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "1.0.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.0.3/flux9s-macos-x86_64.tar.gz"
      sha256 "c65e2c1ad954b235639a1f25658e31deb33b2106f127173c6eaa4d7fa9e09969"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.0.3/flux9s-macos-aarch64.tar.gz"
      sha256 "8bc84097b87feaeb368fb00edfb7ec1ca04cc02fe4d7d791c244967c7245c96f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.0.3/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "225928ec291278bb5e2d459052861c73ca9ab436152698b9811ddab9418ee7ca"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "version"
  end
end
