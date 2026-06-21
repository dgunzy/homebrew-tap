class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.10.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.10.2/flux9s-macos-x86_64.tar.gz"
      sha256 "96b409d42e7ea8e6724027dd9b8cb7e5dbcff06182258a656eea30cf6fceda3c"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.10.2/flux9s-macos-aarch64.tar.gz"
      sha256 "acbd66868f9845e269e45f2a0a67fb3f0f9a99a81387f308a39c9c4c26ac5a99"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.10.2/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "915400dce72f3a2844341d95187b2ab4b26bca6b94f40d71c174aceceb2558d2"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
