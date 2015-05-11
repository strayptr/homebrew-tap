# see https://github.com/Homebrew/homebrew/blob/master/Library/Contributions/example-formula.rb

class Realpath < Formula
  homepage "https://github.com/strayptr/realpath"
  revision 1
  stable do
    url "https://github.com/strayptr/realpath/archive/1.0.0.tar.gz"
    sha256 "00aec70acb143a4c9450d5ed072da2a5bc83d99de401bf169f90ebe8b8a2ccc2"
  end

  def install
    system "make"
    bin.mkpath
    bin.install "realpath"
  end
end

