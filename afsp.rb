require "formula"

class Afsp < Formula
  homepage "http://www-mmsp.ece.mcgill.ca/documents/Software/Packages/AFsp/AFsp.html"
  url "http://www-mmsp.ece.mcgill.ca/documents/downloads/afsp/AFsp-v9r0.tar.gz"
  sha1 "4ec2879b08b8194f291d6d346a484ec9415bb606"
  version "9.0"

  def install
    system "find", "#{buildpath}/", "-type", "d", "-exec", "chmod", "755", "{}", "\;"
    system "find", "#{buildpath}/", "-type", "f", "-exec", "chmod", "644", "{}", "\;"

    system "make", "-j", "1", "-C", "AFsp-v9r0/libtsp", "LDFLAGS=-lm", "PREFIX=#{prefix}"
    system "ranlib", "AFsp-v9r0/lib/libtsplite.a"
    system "make", "-j", "1", "-C", "AFsp-v9r0", "LDFLAGS=-lm", "PREFIX=#{prefix}"

    bin.install "AFsp-v9r0/bin/CompAudio"
    bin.install "AFsp-v9r0/bin/CopyAudio"
    bin.install "AFsp-v9r0/bin/FiltAudio"
    bin.install "AFsp-v9r0/bin/GenNoise"
    bin.install "AFsp-v9r0/bin/GenTone"
    bin.install "AFsp-v9r0/bin/InfoAudio"
    bin.install "AFsp-v9r0/bin/LPanal"
    bin.install "AFsp-v9r0/bin/LPsyn"
    bin.install "AFsp-v9r0/bin/PQevalAudio"
    bin.install "AFsp-v9r0/bin/ResampAudio"
  end
end
