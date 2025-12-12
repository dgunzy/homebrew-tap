class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.5.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.7/flux9s-macos-x86_64.tar.gz"
      sha256 "d270fad8b5af7d2da9f92398669e75e279542eb21c8b0be542136f365b8cc139"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.7/flux9s-macos-aarch64.tar.gz"
      sha256 "68c1167aefc90571e529d96de43993b97dd605e005dad8327698798ab642b58c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.7/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "57400da3e380d6460ec409788158b6773cfd4d26296a72aef282767cdc55baa7"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
