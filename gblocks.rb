class Gblocks < Formula
  homepage "http://molevol.cmima.csic.es/castresana/Gblocks.html"
  version "0.91b"
  url "http://molevol.cmima.csic.es/castresana/Gblocks/Gblocks_Linux64_0.91b.tar.Z"
  sha1 "149d8ae44346eab8e39b71309aa8961f37ffde76"


  def install
    system "mkdir bin"
    system "mv Gblocks bin"
    prefix.install Dir["*"]
  end


  test do
    assert_match "GBLOCKS 0.91b", shell_output("Gblocks 2>&1", 1)
  end
end
