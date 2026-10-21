class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "1.4.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.4.2/flux9s-macos-x86_64.tar.gz"
      sha256 "7b06f8b0a3792222a958499084b31b016ea93d4e73a5195a54834385d8a25a36"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.4.2/flux9s-macos-aarch64.tar.gz"
      sha256 "b25a1f138da037843c344e9dfd299f8049a1aa8f46b3f98671b0c774c0ed599a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.4.2/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "fc47678719c61a116c6a067173e9f3c6fa1e0d2f359e4c8164c1bcf25726187e"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "version"
  end
end
