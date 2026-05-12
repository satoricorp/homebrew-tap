class Ctx < Formula
  desc "Local context for agents and humans"
  homepage "https://github.com/satoricorp/ctx"
  version "0.1.6"
  license "AGPL-3.0-only"

  if OS.mac? && Hardware::CPU.arm?
    url "https://raw.githubusercontent.com/satoricorp/homebrew-tap/main/dist/ctx-0.1.6-aarch64-apple-darwin.tar.gz"
    sha256 "e9c220c594c92d741de3fd081a2f2f12b455b6d3255ec6ee84254ef086b9b8c9"
  elsif OS.mac?
    url "https://raw.githubusercontent.com/satoricorp/homebrew-tap/main/dist/ctx-0.1.6-x86_64-apple-darwin.tar.gz"
    sha256 "eb9ebb751335958b9160dcab5a873c353ead4efeb0b0cf90e9601f30465f6c81"
  else
    url "https://raw.githubusercontent.com/satoricorp/homebrew-tap/main/dist/ctx-0.1.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "87a0c72dae91eb05e63f51d675c242b23070106aefdf2f28e1e3368ac3b607fa"
  end

  def install
    bin.install "ctx", "ctx-server"
    prefix.install_metafiles "README.md", "LICENSE"
  end

  test do
    system "#{bin}/ctx", "--help"
    system "#{bin}/ctx-server", "--help"
  end
end
