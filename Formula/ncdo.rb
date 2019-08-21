class Ncdo < Formula
  desc "Ncurses tool for managing todo.txt files"
  homepage "https://github.com/graffavor/ncdo"
  url "https://github.com/graffavor/ncdo/archive/0.0.2.zip"
  sha256 "cb6bb70806d0921e68dd5bcf75c3a48c2db1b0b2"
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
