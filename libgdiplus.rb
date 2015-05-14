# see https://github.com/Homebrew/homebrew/blob/master/Library/Contributions/example-formula.rb

class Realpath < Formula
  homepage "https://github.com/mono/libgdiplus"
  revision 1

  resource "libgdiplus" do
    url "https://github.com/mono/libgdiplus/archive/3.12.tar.gz"
  end

  depends_on "mono"
  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build
  depends_on "gettext"
  depends_on "gtk+3"

  def install
    system "make"
    bin.mkpath
    bin.install "realpath"
  end
  
  def install
    # a working mono is required for the the build.

    resource("libgdiplus").stage do
      system "./autogen.sh", "--prefix=#{prefix}"
      system "make"
      system "make", "install"
    end
  end
end

