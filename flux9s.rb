class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.0/flux9s-macos-x86_64.tar.gz"
      sha256 "f50f66e35190934a35231dbcc4d96b202cc3e7eb19efdb8ef93c43786408b778"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.0/flux9s-macos-aarch64.tar.gz"
      sha256 "04801b6c2a42dee9d8f19e556ecb17e3f9e0cea9d3b3953cc94be060cc0c03ff"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.0/flux9s-linux-x86_64.tar.gz"
      sha256 "0126056bf75a062c05653f1f29b93d5f03c1a548941199250ff3a8a0ce1bb732"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
