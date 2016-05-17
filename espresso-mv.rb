class EspressoMv < Formula
  desc "Any-to-PostScript filter"
  homepage "https://embedded.eecs.berkeley.edu/pubs/downloads/espresso/index.htm"
  url "https://github.com/martinjlowm/espresso-logic-minimizer/archive/master.tar.gz"

  def install
    system "./configure", "CFLAGS=-std=c90", "--prefix=#{prefix}",
                          "--sysconfdir=#{etc}"
    system "make", "install"
  end
end
