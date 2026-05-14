class Ctx < Formula
  desc "Local context for agents and humans"
  homepage "https://github.com/satoricorp/ctx"
  version "0.1.9"
  license "AGPL-3.0-only"

  if OS.mac? && Hardware::CPU.arm?
    url "https://raw.githubusercontent.com/satoricorp/homebrew-tap/refs/heads/main/dist/ctx-0.1.9-aarch64-apple-darwin.tar.gz"
    sha256 "cf0c5a3e3cede10bba27f9216b220d1e47cd5c124c06025a539846c2a9cb2542"
  elsif OS.mac?
    url "https://raw.githubusercontent.com/satoricorp/homebrew-tap/refs/heads/main/dist/ctx-0.1.9-x86_64-apple-darwin.tar.gz"
    sha256 "06c55a7a8f0ca93bf664eaf3f701b58ed2b1c156f5fbaea970e0e50ce0f57950"
  else
    url "https://raw.githubusercontent.com/satoricorp/homebrew-tap/refs/heads/main/dist/ctx-0.1.9-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f04ef64081a4da41a4621899a6364601b3c8352a01994915c22d3844898e2896"
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
