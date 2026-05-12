class Ctx < Formula
  desc "Local context for agents and humans"
  homepage "https://github.com/satoricorp/ctx"
  version "0.1.7"
  license "AGPL-3.0-only"

  if OS.mac? && Hardware::CPU.arm?
    url "https://raw.githubusercontent.com/satoricorp/homebrew-tap/refs/heads/main/dist/ctx-0.1.7-aarch64-apple-darwin.tar.gz"
    sha256 "4487ee571c0541fb5f3cd4c0785a124db6eaf9072c5e5b5b4aa0952efe75f076"
  elsif OS.mac?
    url "https://raw.githubusercontent.com/satoricorp/homebrew-tap/refs/heads/main/dist/ctx-0.1.7-x86_64-apple-darwin.tar.gz"
    sha256 "bad77caf7e803b7b894636bc18a775fa21be9587f99fb46a28cd1528db412243"
  else
    url "https://raw.githubusercontent.com/satoricorp/homebrew-tap/refs/heads/main/dist/ctx-0.1.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cc5a7711d9ccabe3bf863302a0a4632f63e313cdc798d33289db5f188ac458d2"
  end

  def install
    bin.install "ctx", "ctx-server"
    prefix.install_metafiles
  end

  test do
    system "#{bin}/ctx", "--help"
    system "#{bin}/ctx-server", "--help"
  end
end
