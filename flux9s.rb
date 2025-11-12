class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.1.4/flux9s-macos-x86_64.tar.gz"
      sha256 "7c9fa91abc85e4f07ebd10ff9ee5be72b54714995bfcdf7edfa5583caeb8dbc5"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.1.4/flux9s-macos-aarch64.tar.gz"
      sha256 "c6100ae956bbbe1a70258f99fdb01d503fe4e4330a8a6a3f9081f7974e6c239e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.1.4/flux9s-linux-x86_64.tar.gz"
      sha256 "9b2a1e0fadba675244d20400608e90e5629bd37cefa9a591ce9cc66965f67120"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
