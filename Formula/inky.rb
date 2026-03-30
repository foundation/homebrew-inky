class Inky < Formula
  desc "Transform email templates into email-safe HTML"
  homepage "https://github.com/foundation/inky"
  version "2.0.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.5/inky-aarch64-apple-darwin.tar.gz"
      sha256 "549ed1d6c9d8ed67523c2c0f802c90996b9a72568637bc6d2a6b9fb42db5deb2"
    else
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.5/inky-x86_64-apple-darwin.tar.gz"
      sha256 "c2eb9f3467201baabfd89276654f7f774b1ec0f3bd87c7460594b5b7276498c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.5/inky-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c96ab3095fcfc965b63af94c0f6d59c7ba8c5d95ca1e6421a94a51a82b3a2b80"
    else
      url "https://github.com/foundation/inky/releases/download/v2.0.0-beta.5/inky-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67f316eab02d3dafca3ce90fb0b86cbca20459177236f4a40de8dedf5da3cb5f"
    end
  end

  def install
    bin.install "inky"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inky --version")
  end
end
