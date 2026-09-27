class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.1.0/flux9s-macos-x86_64.tar.gz"
      sha256 "178f7faef8c2f747fb3faca70da68737d8fe83060c53edafce3cf3850be0de35"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.1.0/flux9s-macos-aarch64.tar.gz"
      sha256 "8f1174fbc70ad70762eec1ea1bc5cba29c40a8c5f429293cddb2b35ccbf3ed8c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.1.0/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "5bdbf224c2afa0cf987974b151ce144ccb30fa03f1d3ea8a8a2b4bf60bce1fce"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "version"
  end
end
