class LuaBuild < Formula
  desc "Install various lua versions and implementations"
  homepage "https://github.com/cehoffman/lua-build"
  url "https://github.com/cehoffman/lua-build/archive/890a7e6.tar.gz"
  sha256 "3be319c3a0561c873fd60e2c1fb5e0f605e7ab153eb0f73508c85c17e92a374c"
  revision 2
  version "890a7e6"

  bottle :unneeded

  def install
    ENV["PREFIX"] = prefix
    system "./install.sh"
  end

  test do
    assert_match "5.3.0", shell_output("#{bin}/lua-build --definitions")
  end
end
