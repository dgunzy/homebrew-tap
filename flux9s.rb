class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "1.5.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.5.1/flux9s-macos-x86_64.tar.gz"
      sha256 "6a6d5791cc84058630b9432ca2316b0036f07dc6b5091875cad92792c3327fa0"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.5.1/flux9s-macos-aarch64.tar.gz"
      sha256 "25b20d84355c8190a4634367a726d2e87bd0447d140b77fb0e791c0361290c84"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.5.1/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "e859bac93d61820ec17a8e2f13fab566c4118875ffb159ba62abafdc3ff4a292"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "version"
  end
end
