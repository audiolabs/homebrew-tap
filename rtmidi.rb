require 'formula'

class Rtmidi < Formula
  homepage 'http://www.music.mcgill.ca/~gary/rtmidi'
  url 'http://www.music.mcgill.ca/~gary/rtmidi/release/rtmidi-2.1.0.tar.gz'
  sha1 'e6e8fe7f67eb6dbf0504f72307a47a41e06b1652'

  def install
    ENV.j1
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make"
    #lib.install %w{ librtmidi.2.0.0.dylib, librtmidi.a, librtmidi.dylib  }
    lib.install Dir['librtmidi*']
    include.install Dir['*.h']
  end

end
