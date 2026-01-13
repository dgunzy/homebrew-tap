class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.0/flux9s-macos-x86_64.tar.gz"
      sha256 "056cf8344cc37335e005d4ff7581c9a5da632f4a07b58a553a6108dda17627c8"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.0/flux9s-macos-aarch64.tar.gz"
      sha256 "bcf40927de37367cc0e2e6c1f8b3e69403965c10a6a9f90d84351e9cdb5856b3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.7.0/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "379c9bf6622d084e25e5449f4dab8abece39091c94fe0c51172e3091a212e895"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
