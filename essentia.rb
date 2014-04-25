require "formula"

class Essentia < Formula
  homepage "http://essentia.upf.edu/"
  url "https://github.com/MTG/essentia/archive/v2.0.1.tar.gz"
  sha1 "dcbd738a301c93d4f465a8adeecb18289b33936f"

  head 'https://github.com/MTG/essentia.git'

  depends_on "pkg-config"
  depends_on "gfortran"
  depends_on "readline"
  depends_on "sqlite"
  depends_on "gdbm"
  depends_on "freetype"
  depends_on "libpng"
  depends_on :python => "framework"
  #depends_on "ipython" => :python
  #depends_on "numpy" => :python
  #depends_on "matplotlib" => :python
  depends_on "libyaml"
  depends_on "fftw"
  depends_on "ffmpeg"
  depends_on "libsamplerate"
  depends_on "libtag"

  def install
    system "./waf", "configure", "--mode=release", "--with-python", "--with-cpptests", "--with-examples", "--with-vamp", "--prefix=#{prefix}"
    system "./waf", "install"
  end

  def caveats
    "Essentia's Python bindings also depend on ipython, numpy and matplotlib.
Please install these using
   pip install ipython
   pip install numpy
   pip install matplotlib

Or using the installation method you prefer."
  end
end
