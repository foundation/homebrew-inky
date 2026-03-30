class Inky < Formula
  desc "Transform email templates into email-safe HTML"
  homepage "https://github.com/foundation/inky"
  version "2.0.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.3/inky-aarch64-apple-darwin.tar.gz"
      sha256 "cbe136b51c1bd853584c20746c504d55ef99cc8b0d239d2a38dccb040be9119f"
    else
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.3/inky-x86_64-apple-darwin.tar.gz"
      sha256 "fde88c670b3d5b5ddf17837a4bad016e8835b04d236895ccfc52945bbc11ae28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.3/inky-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "698ce463d7636c945bae8616a15695740282a26f3a219b5dc6e75d0d039d0d5c"
    else
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.3/inky-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f734062a87523ae18035ecbd6bc3e3f79efdb16a482e0baa0e12c6761f3cb1b9"
    end
  end

  def install
    bin.install "inky"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inky --version")
  end
end
