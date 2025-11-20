class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.3.1/flux9s-macos-x86_64.tar.gz"
      sha256 "b0199aedb67a0c0887431c20ed1adf99ae1b52f08e8819cc527adfff6c1b5405"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.3.1/flux9s-macos-aarch64.tar.gz"
      sha256 "46666e37cb50bdc644a779b147e963803dbf8170551481567b1a1f68f756e6da"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.3.1/flux9s-linux-x86_64.tar.gz"
      sha256 "7d42d489a9251e701b374050814719243589aea2bd4d85c3e34070d7c9605eac"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
