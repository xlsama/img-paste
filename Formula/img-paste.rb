class ImgPaste < Formula
  desc "Command-line tool to save image from clipboard to file"
  homepage "https://github.com/xlsama/img-paste"
  url "https://github.com/xlsama/img-paste/releases/download/v1.0.3/img-paste-1.0.3.tar.gz"
  sha256 "c04fcd2dc7f9b06ca015f400f5c64f2119d5a9a0950f914ec710ef2e750ca9a5"
  license "MIT"

  def install
    system "make"
    bin.install "img-paste"
  end

  test do
    system "#{bin}/img-paste"
  end
end
