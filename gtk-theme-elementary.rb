class GtkThemeElementary < Formula
  version '4.0.6'
  desc "Elementary GTK+ 2.0/3.0 theme"
  homepage "https://launchpad.net/egtk"
  url "https://launchpad.net/egtk/4.x/#{version}/+download/elementary.tar.xz"
  md5 "d2a39e5842dd157edbed00992090730c"

  depends_on "gtk-murrine-engine"
  depends_on "gtk+"

  def install
    (share/'themes').install 'elementary'
  end
end
