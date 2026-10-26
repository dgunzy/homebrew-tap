class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "1.4.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.4.3/flux9s-macos-x86_64.tar.gz"
      sha256 "d5578a22b2ddc4dec47aaf465bd966b77f3eff8b737f07c732573316db197e17"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.4.3/flux9s-macos-aarch64.tar.gz"
      sha256 "900b7f3b46099c39a5d96332594b714a912dac805834be9b5d71df456c32f3ec"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.4.3/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "66bd9d8e5dedccd74bf50441e35165859d9b6ea446d7f7d445ae89d5544c6274"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "version"
  end
end
