class Inky < Formula
  desc "Transform email templates into email-safe HTML"
  homepage "https://github.com/foundation/inky"
  version "2.0.0-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.9/inky-aarch64-apple-darwin.tar.gz"
      sha256 "e514fa67290c8307ad9d5bbd622faac98ff8e158b8ae7e4f693ac120df68e060"
    else
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.9/inky-x86_64-apple-darwin.tar.gz"
      sha256 "ac5c861e2e8b909ae875940192bed464e665f745afc1b0b89aac0fd408705fe0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.9/inky-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "148cf367878865256aadbdb789a8702cd55f2978df75e30ba2eb3f803e3832d6"
    else
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.9/inky-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "381f8c2ffb18ee9685fd9a58691189825382c134ff1955d1867f16f32473cc54"
    end
  end

  def install
    bin.install "inky"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inky --version")
  end
end
