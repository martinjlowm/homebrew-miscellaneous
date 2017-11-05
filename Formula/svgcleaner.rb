class Svgcleaner < Formula
  version '2.3'
  desc "Espresso heuristic logic minimizer"
  homepage "https://embedded.eecs.berkeley.edu/pubs/downloads/espresso/index.htm"
  url "https://github.com/martinjlowm/espresso-logic-minimizer/archive/2.3.tar.gz"
  sha256 "5e234ec0263cd720704d56b348af0bb568926f37bb821409197c393dd898669f"

  def install
    system "./configure", "CFLAGS=-std=c90", "--prefix=#{prefix}",
                          "--sysconfdir=#{etc}"
    system "make", "install"
  end
end
