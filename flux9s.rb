class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.9.0/flux9s-macos-x86_64.tar.gz"
      sha256 "6970586bb0ff648c640d6acbbf6e2c0aca01ea3294da5dae2f71cea6b4f3efc7"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.9.0/flux9s-macos-aarch64.tar.gz"
      sha256 "22f1d2065c48185863833f59443242d06873938358d3515cbf7e8c230502b035"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.9.0/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "681a07af18cc050d167393fa6e535461223d00f0b51257f0ca976fe95cc2d1f2"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
