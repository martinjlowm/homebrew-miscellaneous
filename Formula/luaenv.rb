class Luaenv < Formula
  desc "Lua version manager (fork of rbenv)"
  homepage "https://github.com/cehoffman/luaenv"
  url "https://github.com/cehoffman/luaenv/archive/3ef7626.tar.gz"
  sha256 "c9c8cbb4b955f90d60d2affc0128610f4f002d6a08cb3c98197007308fe52ae4"
  head "https://github.com/cehoffman/luaenv.git"
  revision 1
  version "3ef7626"

  bottle :unneeded

  depends_on "lua-build" => :recommended

  def install
    inreplace "libexec/luaenv", "/usr/local", HOMEBREW_PREFIX
    prefix.install Dir["*"]
  end

  def caveats; <<~EOS
    To use Homebrew's directories rather than ~/.luaenv add to your profile:
      export LUAENV_ROOT=#{var}/luaenv

    To enable shims and autocompletion add to your profile:
      if ! [ -x "$(command -v luaenv)" ]; then
          eval "$(luaenv init -)";
      fi
    EOS
  end

  test do
    shell_output("eval \"$(#{bin}/luaenv init -)\" && luaenv versions")
  end
end
