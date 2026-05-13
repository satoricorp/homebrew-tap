class Ctx < Formula
  desc "Local context for agents and humans"
  homepage "https://github.com/satoricorp/ctx"
  version "0.1.8"
  license "AGPL-3.0-only"

  if OS.mac? && Hardware::CPU.arm?
    url "https://raw.githubusercontent.com/satoricorp/homebrew-tap/refs/heads/main/dist/ctx-0.1.8-aarch64-apple-darwin.tar.gz"
    sha256 "54fe8e1f9f472d5b327cc37b2bf0ed7164a83f8e8a17a4c36cd1c01d4cfea00e"
  elsif OS.mac?
    url "https://raw.githubusercontent.com/satoricorp/homebrew-tap/refs/heads/main/dist/ctx-0.1.8-x86_64-apple-darwin.tar.gz"
    sha256 "4d9e3b803ba8b6ecdab70d2ef9c8f4e748dee2c89544985ff520ea8699209968"
  else
    url "https://raw.githubusercontent.com/satoricorp/homebrew-tap/refs/heads/main/dist/ctx-0.1.8-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fa7fd699e0b836d70d6c537176c843ed2ae36235ee1b1e2e4428bb653b8e2c69"
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
