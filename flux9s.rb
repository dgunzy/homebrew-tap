class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.0.1/flux9s-macos-x86_64.tar.gz"
      sha256 "bafa13975a1e73b4fa774e09b931ebcd4f47ac7e8646772284f2453a71b035b5"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.0.1/flux9s-macos-aarch64.tar.gz"
      sha256 "412896c2659541180545b83239439f980d9cf9831744ddb0b61dcb18e9124889"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.0.1/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "578eaf2e44a781bd9639ba2892e49b3c74a31d0d5a816c84e82d5863ab1349cd"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "version"
  end
end
