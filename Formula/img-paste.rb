class ImgPaste < Formula
  desc "Command-line tool to save image from clipboard to file"
  homepage "https://github.com/xlsama/img-paste"
  url "https://github.com/xlsama/img-paste/releases/download/v1.0.1/img-paste-1.0.1.tar.gz"
  sha256 "4ed5f70b753b328931ec8f470ffe82d19bd1a89ca80a25c480e7e6f4e64fa617"
  license "MIT"

  def install
    system "make"
    bin.install "img-paste"
  end

  test do
    system "#{bin}/img-paste"
  end
end
