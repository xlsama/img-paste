class ImgPaste < Formula
  desc "Command-line tool to save image from clipboard to file"
  homepage "https://github.com/xlsama/img-paste"
  url "https://github.com/xlsama/img-paste/img-paste"
  sha256 "6c7e4555df86622643b63a3c35584d4afb218e7b0c970feab44847d547c843d1"

  def install
    system "make"
    bin.install "img-paste"
  end

  test do
    system "#{bin}/img-paste", "--version"
  end
end
