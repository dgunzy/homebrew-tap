class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.4.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.4.3/flux9s-macos-x86_64.tar.gz"
      sha256 "b78d6b3bf868aac5b7c83c6b2e74199e159f2ebb386578cb605c6821f1e83e8a"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.4.3/flux9s-macos-aarch64.tar.gz"
      sha256 "8aea0b4aa3b06f8ae2a218102a1167e39aeb283822320e140c334251e366a337"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.4.3/flux9s-linux-x86_64.tar.gz"
      sha256 "576c23651f51b822ad6212f68e925762eacf4c3490e62d0785ba5706e568ed02"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
