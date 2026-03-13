class Inky < Formula
  desc "Transform email templates into email-safe HTML"
  homepage "https://github.com/foundation/inky"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/foundation/inky/releases/download/v#{version}/inky-aarch64-apple-darwin.tar.gz"
      sha256 "SHA256_PLACEHOLDER"
    else
      url "https://github.com/foundation/inky/releases/download/v#{version}/inky-x86_64-apple-darwin.tar.gz"
      sha256 "SHA256_PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/foundation/inky/releases/download/v#{version}/inky-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "SHA256_PLACEHOLDER"
    else
      url "https://github.com/foundation/inky/releases/download/v#{version}/inky-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "SHA256_PLACEHOLDER"
    end
  end

  def install
    bin.install "inky"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inky --version")
  end
end
