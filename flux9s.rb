class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.1.3/flux9s-macos-x86_64.tar.gz"
      sha256 "d6e9c922710c5e0180f003e77a4f6d58103dcb5b8b9561fa424fb205e13476a3"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.1.3/flux9s-macos-aarch64.tar.gz"
      sha256 "7b1c0eea2aa425aa72c5eb3c57a276b9616beab77b1aa8f765c0c036128e942f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.1.3/flux9s-linux-x86_64.tar.gz"
      sha256 "e20e4598b489f899bf0d62cceb112a4f0d43d14e7e42ae06b85c4d88fc5aadbe"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
