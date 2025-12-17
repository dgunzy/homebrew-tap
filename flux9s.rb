class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.5.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.9/flux9s-macos-x86_64.tar.gz"
      sha256 "48d7da153fc2e7afb39cfefd550f25e766996270f2e60698a5c9280859be370e"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.9/flux9s-macos-aarch64.tar.gz"
      sha256 "dded423da9171721b416c73b2027acd78f7a35ab309670541d7b5c107378a339"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.9/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "9796d692ab1cd4d1cf7bebf9b4cfa441e038a49cf78d55ce0242900f52367c95"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
