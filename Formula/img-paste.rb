class ImgPaste < Formula
  desc "Command-line tool to save image from clipboard to file"
  homepage "https://github.com/xlsama/img-paste"
  url "https://github.com/xlsama/img-paste/releases/download/v1.0.0/img-paste-1.0.0.tar.gz"
  sha256 "b31b55368d491a830b4b3bd8ce87d0f599682e7505c386b2567d71da6dda9ee0"
  license "MIT"

  def install
    system "make"
    bin.install "img-paste"
  end

  test do
    system "#{bin}/img-paste"
  end
end
