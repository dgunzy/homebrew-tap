class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.4.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.4.2/flux9s-macos-x86_64.tar.gz"
      sha256 "6cb45fecb4bb4f240e45552209fbb068eb1dbc0e98389a7316b78a31d37b14d0"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.4.2/flux9s-macos-aarch64.tar.gz"
      sha256 "a21fcc997628e4153f9dbc8d80ee6246708c6e080620a9ad7c2c98b81df45ba5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.4.2/flux9s-linux-x86_64.tar.gz"
      sha256 "a4998ca4dd81cfc3e5c175bb517e77e0ba6e3c5dddc021139873cf90386dbcee"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
