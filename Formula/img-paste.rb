class ImgPaste < Formula
  desc "Command-line tool to save image from clipboard to file"
  homepage "https://github.com/xlsama/img-paste"
  url "https://github.com/xlsama/img-paste/releases/download/v1.0.0/img-paste-1.0.0.tar.gz"
  sha256 "7e0e1b5265f32515e0d8f29c405dcda5ffe270010ca69f4223ea7dbda4a8b6c3"
  license "MIT"

  def install
    system "make"
    bin.install "img-paste"
  end

  test do
    system "#{bin}/img-paste"
  end
end
