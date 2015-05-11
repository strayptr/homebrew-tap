# see https://github.com/Homebrew/homebrew/blob/master/Library/Contributions/example-formula.rb

class Realpath < Formula
  homepage "https://github.com/strayptr/realpath"
  revision 1
  stable do
    url "https://github.com/strayptr/realpath/archive/1.0.0.tar.gz"
  end

  def install
    system "make"
    bin.mkpath
    bin.install "realpath"
  end
end

