class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "1.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.3.0/flux9s-macos-x86_64.tar.gz"
      sha256 "56d6e2b8ecce693e72a0c8c4266c7164d325fbc891050a73653bcacb13a1d450"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.3.0/flux9s-macos-aarch64.tar.gz"
      sha256 "568c67eff3bf0b097b808c0999133050ce1320db86e2e453b1c031806783ed3f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.3.0/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "936dcb9d8a1391748d2d5bb072bcdb0b6513e555d4aecceb98347d21d2b09e22"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "version"
  end
end
