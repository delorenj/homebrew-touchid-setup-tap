class Touchymcrootface < Formula
  desc "Pretty neat CLI tool to enable Touch ID authentication for sudo on macOS"
  homepage "https://github.com/delorenj/touchymcrootface"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/delorenj/touchymcrootface/releases/download/v1.0.0/touchymcrootface-darwin-arm64"
      sha256 "e713aafaa005a39340441f95fa99561cfb405478be7870e0bb9cfb24f3bc1d58"
    else
      url "https://github.com/delorenj/touchymcrootface/releases/download/v1.0.0/touchymcrootface-darwin-amd64"
      sha256 "d78d583ef3e3b44243f1c70555e73658224799e17a97f101b95cc1fedbac4141"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "touchymcrootface-darwin-arm64" => "touchymcrootface"
    else
      bin.install "touchymcrootface-darwin-amd64" => "touchymcrootface"
    end
  end

  test do
    system bin/"touchymcrootface", "--version"
  end
end
