class EspressoMv < Formula
  version '2.3'
  desc "Espresso heuristic logic minimizer"
  homepage "https://embedded.eecs.berkeley.edu/pubs/downloads/espresso/index.htm"
  url "https://github.com/martinjlowm/espresso-logic-minimizer/archive/master.tar.gz"

  def install
    system "./configure", "CFLAGS=-std=c90", "--prefix=#{prefix}",
                          "--sysconfdir=#{etc}"
    system "make", "install"
  end
end
