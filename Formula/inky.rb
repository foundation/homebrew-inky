class Inky < Formula
  desc "Transform email templates into email-safe HTML"
  homepage "https://github.com/foundation/inky"
  version "2.0.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/foundation/inky/releases/download/v#{version}/inky-aarch64-apple-darwin.tar.gz"
      sha256 "713a2405ebc07f1111b4d62090c594877b52d77df28be7379c85e7667e4f2c37"
    else
      url "https://github.com/foundation/inky/releases/download/v#{version}/inky-x86_64-apple-darwin.tar.gz"
      sha256 "7fdcd64060b9ab9fb2bdae8bf57d7dd09e6e5fd7933b65d5f5dc6f6525b34ff3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/foundation/inky/releases/download/v#{version}/inky-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "25f2401a5006faa8399fbc9cfd71d30c5cfa0e61898747ef617339a2ca0ae0a3"
    else
      url "https://github.com/foundation/inky/releases/download/v#{version}/inky-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42c201efc19955f98b1985680b6a4160237739b9e40e28dfaaf76ebd51e19b8f"
    end
  end

  def install
    bin.install "inky"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inky --version")
  end
end
