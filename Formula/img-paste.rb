class ImgPaste < Formula
  desc "Command-line tool to save image from clipboard to file"
  homepage "https://github.com/xlsama/img-paste"
  url "https://github.com/xlsama/img-paste/releases/download/v1.0.0/img-paste-1.0.0.tar.gz"
  sha256 "a3be60e71306a207c9453a4ab6f049c3d36f38640304dc3dbc5814f299bd5fb1"

  def install
    system "make"
    bin.install "img-paste"
  end

  test do
    system "#{bin}/img-paste", "--version"
  end
end
