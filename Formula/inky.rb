class Inky < Formula
  desc "Transform email templates into email-safe HTML"
  homepage "https://github.com/foundation/inky"
  version "2.0.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.2/inky-aarch64-apple-darwin.tar.gz"
      sha256 "b200603605e5d20839f4674b3fe93145c2c4e84ace79bff3d433f8d5a867b756"
    else
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.2/inky-x86_64-apple-darwin.tar.gz"
      sha256 "0c731266d7ed32d98a2adcb0b1d56add0028945cb30bfddea03022cd0696dfea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.2/inky-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c21b754e841ba3579f90b87b23d4c00f5c4b4373719ea50680d75bb546e3248"
    else
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.2/inky-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b2ef5e10d61907e1ffdab7427a936cd224480b0bccb24857921ebee20bb593a"
    end
  end

  def install
    bin.install "inky"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inky --version")
  end
end
