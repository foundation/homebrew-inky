class Inky < Formula
  desc "Transform email templates into email-safe HTML"
  homepage "https://github.com/foundation/inky"
  version "2.0.0-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.10/inky-aarch64-apple-darwin.tar.gz"
      sha256 "8db9dacdce28eab60fe41c71709064e97fd64f22864d806a5252aa535c089175"
    else
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.10/inky-x86_64-apple-darwin.tar.gz"
      sha256 "c205b3d9ea614a31c472d395020ff386d7513f39551ee8a4fc9194a6dab7a877"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.10/inky-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "50509910cea2607b5b70ca9a70113f3a7d77f9cb5b8bc3c32c3a4f40b44e3478"
    else
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.10/inky-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "75295d4f621ba9ac45693100fb0f52f33fac69b4a19428bfaffc9663b56d7480"
    end
  end

  def install
    bin.install "inky"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inky --version")
  end
end
