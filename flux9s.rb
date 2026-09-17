class Flux9s < Formula
  desc "K9s-inspired terminal UI for monitoring Flux GitOps resources"
  homepage "https://github.com/dgunzy/flux9s"
  version "1.0.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.0.5/flux9s-macos-x86_64.tar.gz"
      sha256 "b31d7c8028e62fa5a9b650b6067f9995caf676565eb03ff098a06ba2ca89c846"
    elsif Hardware::CPU.arm?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.0.5/flux9s-macos-aarch64.tar.gz"
      sha256 "ca780cb0ba872561542945c188cc6ab25d12496ca508bdbfad6b4eef90a43447"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dgunzy/flux9s/releases/download/v1.0.5/flux9s-linux-x86_64-musl.tar.gz"
      sha256 "4b57c8681c7103cd469c9c069624e1d5593ab97c199ff813a6fe3a5cdd775934"
    end
  end

  def install
    bin.install "flux9s"
  end

  test do
    system "#{bin}/flux9s", "version"
  end
end
