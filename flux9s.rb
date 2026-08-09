class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "1.0.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.0.2/flux9s-macos-x86_64.tar.gz"
      sha256 "61a3bdaac195a5c247ee8ef5de8b623230e8c20de93099f5442225d144362326"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.0.2/flux9s-macos-aarch64.tar.gz"
      sha256 "e13d8b3c5d1f2f296de5d4d6909777a9780f0ce1968b2607b99a80de0af395ab"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.0.2/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "125efef281fd42831561f6a58a708a1f0331a2c853e084b5d8cd2b15ff9ea118"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "version"
  end
end
