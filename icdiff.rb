require "formula"

class Icdiff < Formula
  homepage "http://www.jefftk.com/icdiff"
  url "https://github.com/jeffkaufman/icdiff/archive/0a27bea010fe3be5589840b9850bb0f883f031c7.zip"
  sha1 "e4c9f281068378e895b0e9ad72e9e4bc6c7eb330"

  head 'https://github.com/jeffkaufman/icdiff.git'

  def install
    bin.install "icdiff"
    bin.install "git-icdiff"
  end
end
