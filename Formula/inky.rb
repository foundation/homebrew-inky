class Inky < Formula
  desc "Transform email templates into email-safe HTML"
  homepage "https://github.com/foundation/inky"
  version "2.0.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.4/inky-aarch64-apple-darwin.tar.gz"
      sha256 "154a4b04eaa5d6259de61e3d30903f08b089c2c5ee3867b95f44685a3ea00e39"
    else
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.4/inky-x86_64-apple-darwin.tar.gz"
      sha256 "59fc3675f528d689662cee54081d049ff3b0bc58faf08d6f801cabfdc1fcf1c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.4/inky-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6fb173d01bd68c025292ace04a863a9c4e2259a9a54777b2c9973f9552530799"
    else
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.4/inky-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eaa05d82f8045fd2d7c8bd44fbbc7a31d19c3b75c4f77f3a02df778616e625ae"
    end
  end

  def install
    bin.install "inky"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inky --version")
  end
end
