class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "1.0.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.0.4/flux9s-macos-x86_64.tar.gz"
      sha256 "6ba71f5c782cf0483c8eff10f75b52d5f0e619a2ef229d1e36dab32e828a87ba"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.0.4/flux9s-macos-aarch64.tar.gz"
      sha256 "4e938ee8f4fc83e00b300d647db63e6f4a7ab4425dca8207e5e3697a1177da11"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.0.4/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "c692063f773e04868b5b58c7a578c647b1df762854f1b5160dbc321fa78917e5"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "version"
  end
end
