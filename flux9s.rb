class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.5.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.10/flux9s-macos-x86_64.tar.gz"
      sha256 "557d05b1db27058d7b0be96a65f6d1fe5b45a139e726bbfc38e137f048fc23e9"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.10/flux9s-macos-aarch64.tar.gz"
      sha256 "e8f95ba4ce786d8b06a281053713f34df93a37f70f657179a2c9f6324d26833f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.10/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "216128136f278c683cc8df2a8132a5bb179b98aa1ef9e9f7d2342589714109e4"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
