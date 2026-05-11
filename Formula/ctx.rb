class Ctx < Formula
  desc "Local context for agents and humans"
  homepage "https://github.com/satoricorp/ctx"
  version "0.1.4"
  license "AGPL-3.0-only"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/satoricorp/ctx/releases/download/v0.1.4/ctx-0.1.4-aarch64-apple-darwin.tar.gz"
    sha256 "999f3ef683c26c4cb55fde7acfd7c674df26c4e807b7290416696e86de2a0ca0"
  elsif OS.mac?
    url "https://github.com/satoricorp/ctx/releases/download/v0.1.4/ctx-0.1.4-x86_64-apple-darwin.tar.gz"
    sha256 "406890c3985aef9c8bccdde6074b0103fa3490d4250dcfd9776d54441c480f10"
  else
    url "https://github.com/satoricorp/ctx/releases/download/v0.1.4/ctx-0.1.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "db1ea519e1be24bbda711f5507940a5647a73378f99c8c6ee327bc29169cf7b4"
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
