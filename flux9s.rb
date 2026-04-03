class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.8.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.8.1/flux9s-macos-x86_64.tar.gz"
      sha256 "bc73714ec8546fbad96fe2512c84566a8f0e2295afc1b824261ca69ab16eca11"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.8.1/flux9s-macos-aarch64.tar.gz"
      sha256 "feb84e389388b2b7e23f6066c877c3e22bb936e177b3c4d645d594bd415d58c3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.8.1/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "6bb406df54df10ec957d617fb819af9acc4ddf82d51ef18fa0732c06b7dbcefc"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
