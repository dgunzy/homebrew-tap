class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.4.1/flux9s-macos-x86_64.tar.gz"
      sha256 "da35f86ffe8f9ac82387ab95e678beb47c5df2923d952e1427845c573c488567"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.4.1/flux9s-macos-aarch64.tar.gz"
      sha256 "2e4251149c64118f80c0ec1bdebc0a1e044ffd8e01054f951a75150601752a4e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.4.1/flux9s-linux-x86_64.tar.gz"
      sha256 "235f15d10424b45656a31a5307eb6d1576425faee19e445632da410a9b4d9692"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
