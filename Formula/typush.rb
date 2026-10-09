# typed: false
# frozen_string_literal: true

class Typush < Formula
  desc "Package manager for Typst"
  homepage "https://github.com/Vncntvx/typush"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Vncntvx/typush/releases/download/v0.2.0/typush_0.2.0_darwin_amd64.tar.gz"
      sha256 "fb5ea0edfa1bfd44fba1e24a0d348f641964522decfd4fe35da50686781fad6c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Vncntvx/typush/releases/download/v0.2.0/typush_0.2.0_darwin_arm64.tar.gz"
      sha256 "d9e17e26917e288fa0db9fff97cc1d523ecfac973e3367c468c445251ddb6938"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Vncntvx/typush/releases/download/v0.2.0/typush_0.2.0_linux_amd64.tar.gz"
      sha256 "ef4a18b7ecb4caefc089d9a018c3c1f1f69f1da46ac25ee2348adb7b78d96457"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Vncntvx/typush/releases/download/v0.2.0/typush_0.2.0_linux_arm64.tar.gz"
      sha256 "70717d745d71a37f022d79d9bcbd4333bcaf6357604742a3dd07d383687c99e2"
    end
  end

  def install
    bin.install "typush"
  end

  test do
    system "#{bin}/typush", "--version"
  end
end
