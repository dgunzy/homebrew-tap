class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.7.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.7/flux9s-macos-x86_64.tar.gz"
      sha256 "4ca4eb8d20d95395544eff9967d99570573907ac392dfcdbb25cb53bcc3c9dd3"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.7/flux9s-macos-aarch64.tar.gz"
      sha256 "809ae4ac589c9b2a5bfdf77cf069333872e66b51f22ff660fd980a4a9f9ec0c9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.7/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "325c9cb98960c014f772d2c5daa86a11b879822596e1be50a1c7804479ae6e0a"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
