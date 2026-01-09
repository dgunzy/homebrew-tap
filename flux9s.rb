class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.6.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.6.4/flux9s-macos-x86_64.tar.gz"
      sha256 "da3b405bc210d730e48e1017497b20760cb133835065890dd5b824686841f8da"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.6.4/flux9s-macos-aarch64.tar.gz"
      sha256 "c0dda87efcfb38c3f1b25bebb0a893887cd46ce71c3865e23f16d1cf025da1b1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.6.4/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "5c7ca43bd59e53935743f4abeae7b947ceaab71bf1381d977447908d41cdacd8"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
