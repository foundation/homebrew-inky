class Inky < Formula
  desc "Transform email templates into email-safe HTML"
  homepage "https://github.com/foundation/inky"
  version "2.0.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.7/inky-aarch64-apple-darwin.tar.gz"
      sha256 "7d2860bd484275d15f158bfb10ce462ec870b11ebdbbeaf1be1de7ce40222f03"
    else
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.7/inky-x86_64-apple-darwin.tar.gz"
      sha256 "43a323f755136e0c5a08a381c3c73e94877cfa3306b01931cef39f9ef2877a26"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.7/inky-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "813d3878d8c63ec2d81e94696209e69a105048bdbb06494c27dd4046e512dd1a"
    else
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.7/inky-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "957446a12a460e8fc2c9d5f04c3370d8d60514dcce1213853047fe607f1ac43d"
    end
  end

  def install
    bin.install "inky"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inky --version")
  end
end
