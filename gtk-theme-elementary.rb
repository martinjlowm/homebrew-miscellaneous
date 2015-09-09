class GtkThemeElementary < Formula
  version '4.0.6'
  desc 'Elementary GTK+ 2.0/3.0 theme'
  homepage 'https://launchpad.net/egtk'
  url "https://launchpad.net/egtk/4.x/#{version}/+download/elementary.tar.xz"
  sha256 'eed59e6957b9baf050fb762ec9455a98d35471f0034dddb91fedcdafcefa5963'

  depends_on 'gtk-murrine-engine'
  depends_on 'gtk+'

  def install
    (share/'themes/elementary').install '.'
  end
end
