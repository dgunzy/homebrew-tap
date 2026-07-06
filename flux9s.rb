class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.11.0/flux9s-macos-x86_64.tar.gz"
      sha256 "27b50fb849856e16938d11a4ba394a9ba7f4e02935f37974786e368e6adf820d"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.11.0/flux9s-macos-aarch64.tar.gz"
      sha256 "a74d6762b44d9038fd2bbc011a62302a28046c9a29997988f4b31a8959546db9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.11.0/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "d56cd6d1dfb43e57e51a21040eca475eaed6c021c080e775ff7a954b473f94a7"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
