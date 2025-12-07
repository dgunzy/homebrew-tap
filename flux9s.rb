class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "0.5.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.5/flux9s-macos-x86_64.tar.gz"
      sha256 "21517c607b9fd3a054bdd32f96644c313e41db840038a43f3a9db12976d40957"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.5/flux9s-macos-aarch64.tar.gz"
      sha256 "5ffb5b3eaa650e3476052438a272fd74c698751e4c3e44f838c7ceecf2c4154c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v0.5.5/flux9s-linux-x86_64.tar.gz"
      sha256 "e03f0ff73043f16dbe1ede5575832f4ea9ff437857cbfa03aae5110e0019f63f"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "--version"
  end
end
