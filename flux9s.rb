class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "1.4.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.4.1/flux9s-macos-x86_64.tar.gz"
      sha256 "e34136312b3464e8e9429dbb80862f2d3e789dde9efbdd8a8b6c370e529bd1cb"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.4.1/flux9s-macos-aarch64.tar.gz"
      sha256 "b02200c2f8af0bae41681d25431f08dbb785d6e75a9e9ab39741ec9b5f37681d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.4.1/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "7973436f388add7fed250278578b4d9e515bceea39caaa3e0b49865a868b3b49"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "version"
  end
end
