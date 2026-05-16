class Ctx < Formula
  desc "Local context for agents and humans"
  homepage "https://github.com/satoricorp/ctx"
  version "0.1.10"
  license "AGPL-3.0-only"

  if OS.mac? && Hardware::CPU.arm?
    url "https://raw.githubusercontent.com/satoricorp/homebrew-tap/refs/heads/main/dist/ctx-0.1.10-aarch64-apple-darwin.tar.gz"
    sha256 "e308e87361ee78b1071ba10d2718dfb91dc7c6440c38deb41e907f857c27f8eb"
  elsif OS.mac?
    url "https://raw.githubusercontent.com/satoricorp/homebrew-tap/refs/heads/main/dist/ctx-0.1.10-x86_64-apple-darwin.tar.gz"
    sha256 "936f8b348d4e1274b259982cd2fe2fc469f2a954fcb6c1801c31afa5bf58e578"
  else
    url "https://raw.githubusercontent.com/satoricorp/homebrew-tap/refs/heads/main/dist/ctx-0.1.10-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1acfacc551728c8a965c54e1007d519cee5b69a9adb405e78e445a1f2756dd8c"
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
