class ImgPaste < Formula
  desc "Command-line tool to save image from clipboard to file"
  homepage "https://github.com/xlsama/img-paste"
  url "https://github.com/xlsama/img-paste/releases/download/v1.0.2/img-paste-1.0.2.tar.gz"
  sha256 "ea3d7aaabdf530a22a51a1f2e2ac94a911502e21e03f69c2493a4b9600e15bac"
  license "MIT"

  def install
    system "make"
    bin.install "img-paste"
  end

  test do
    system "#{bin}/img-paste"
  end
end
