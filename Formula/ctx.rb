class Ctx < Formula
  desc "Local context for agents and humans"
  homepage "https://github.com/satoricorp/ctx"
  version "0.1.3"
  license "AGPL-3.0-only"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/satoricorp/ctx/releases/download/v0.1.3/ctx-0.1.3-aarch64-apple-darwin.tar.gz"
    sha256 "ce42e3b1637cba8bb7f4bc8fc406afba881a47a8d302b6d332c23ed3535cf250"
  elsif OS.mac?
    url "https://github.com/satoricorp/ctx/releases/download/v0.1.3/ctx-0.1.3-x86_64-apple-darwin.tar.gz"
    sha256 "006ad64d11507662024a2c6020e22f599c1e1b3a37e714c095f8a7889f4e318a"
  else
    url "https://github.com/satoricorp/ctx/releases/download/v0.1.3/ctx-0.1.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "40c3d9c3d99f89fb7ed55da9c68a49286c94d9ac6652b25ee80a5ea8aa979eb1"
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
