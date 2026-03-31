class Inky < Formula
  desc "Transform email templates into email-safe HTML"
  homepage "https://github.com/foundation/inky"
  version "2.0.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.8/inky-aarch64-apple-darwin.tar.gz"
      sha256 "9a566768ef7ea53a277e6b218b73365cd734be32bc03705e4b2161e27df5b85b"
    else
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.8/inky-x86_64-apple-darwin.tar.gz"
      sha256 "0948b05cd3240880c081f8eae054686d5257f0eb51b7174d0cf8a3691ac56e92"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.8/inky-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e068d572e8453600600fb12517a5160913c1f2a18a5ec12938cfb134d31b2092"
    else
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.8/inky-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e440d541b367ce2a7869536e0d6469f0401e3f75cbd54f9c86b143d51e29abd1"
    end
  end

  def install
    bin.install "inky"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inky --version")
  end
end
