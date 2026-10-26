class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "1.4.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.4.4/flux9s-macos-x86_64.tar.gz"
      sha256 "6c78ebd30485122646f5b1025f151564f483a672162c3c317c6116aa5bed4fa2"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.4.4/flux9s-macos-aarch64.tar.gz"
      sha256 "5bff66c4feb099af72c225b6cc4ce77b5433efb6a59b186b18ce841851016168"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.4.4/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "60025e2255d203782cc53498e9383d5598bb9f8abde8dd9db9ccaf5bdbce36a6"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "version"
  end
end
