class Ncdo < Formula
  desc "Ncurses tool for managing todo.txt files"
  homepage "https://github.com/graffavor/ncdo"
  url "https://github.com/graffavor/ncdo/archive/0.0.2.zip"
  sha256 "a2cb8a15d7014f62fb930869c4eaf2ab7aef73f7ca85a133f34f0770f2cc096d"
  head "https://github.com/graffavor/ncdo.git"

  depends_on "cmake" => :build
  depends_on "boost" => :build

  def install
    ENV.deparallelize
    system "cmake", "-DCMAKE_BUILD_TYPE=Release", ".", *std_cmake_args
    system "make"
    bin.install "ncdo"
  end

  test do
    system "false"
  end
end
