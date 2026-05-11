class Ctx < Formula
  desc "Local context for agents and humans"
  homepage "https://github.com/satoricorp/ctx"
  version "0.1.5"
  license "AGPL-3.0-only"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/satoricorp/ctx/releases/download/v0.1.5/ctx-0.1.5-aarch64-apple-darwin.tar.gz"
    sha256 "f2a4052df08f65b842c7553265cca608e6f048b0a41d4b5add73794a7f77afdb"
  elsif OS.mac?
    url "https://github.com/satoricorp/ctx/releases/download/v0.1.5/ctx-0.1.5-x86_64-apple-darwin.tar.gz"
    sha256 "339ef45528b6e8e57ac4e14b698a67aab304c2e2752d79bb204b9c0da0057f9b"
  else
    url "https://github.com/satoricorp/ctx/releases/download/v0.1.5/ctx-0.1.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2109a9bac82d139480f5ead9279395293181f18d197a79cabd2483ada7208f69"
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
