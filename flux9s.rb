class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.1.5/flux9s-macos-x86_64.tar.gz"
      sha256 "24fd3eee15677817868563136b6c8f4074d9eef5a131c4499c2bf319496a1931"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.1.5/flux9s-macos-aarch64.tar.gz"
      sha256 "771ab8f152e67eecd3d27b6b4daddd0a123619570b86188e5530d6aeda08f93e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.1.5/flux9s-linux-x86_64.tar.gz"
      sha256 "ffaf3578dd7bbd53ccad723bcdda6b36dcf807b3272a52b82a417754d4c91beb"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
