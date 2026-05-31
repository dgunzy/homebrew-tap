class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.9.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.9.1/flux9s-macos-x86_64.tar.gz"
      sha256 "de0beb5573b741227d2a02f8491bc81b992cba5f85c646af79f2a805ce14ec2f"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.9.1/flux9s-macos-aarch64.tar.gz"
      sha256 "918c1ca801d72f2e6cd5d47fc7b7ebaa42f55545dc1ed68c6ea3b784af491345"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.9.1/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "42cf3a5790fd15b5117b6bfde8e8a2ca7cfb1b928a02e17a1f293b136c969717"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
