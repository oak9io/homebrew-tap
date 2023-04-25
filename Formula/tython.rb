# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tython < Formula
  desc "Tython supports testing and applying (i.e. running) user-created SaC blueprints. This can be done locally on your own machine or through integrations with oak9."
  homepage "https://oak9.io/"
  version "0.0.6"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com//oak9io/tython/releases/download/v0.0.6/tython_0.0.6_darwin_amd64.tar.gz"
      sha256 "2096f676ff9862737afe9c583c01592c9b6e2b120df25749a820e6bf7e3095c7"

      def install
        bin.install "tython"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com//oak9io/tython/releases/download/v0.0.6/tython_0.0.6_darwin_arm64.tar.gz"
      sha256 "7570ef736757db21451b3113777bd881439a8c8cc9db9b64ebd769020a0e7f29"

      def install
        bin.install "tython"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com//oak9io/tython/releases/download/v0.0.6/tython_0.0.6_linux_arm64.tar.gz"
      sha256 "870c93472908637d1cefa7f315003f306372645348ff4ae2f11448fa98bc0199"

      def install
        bin.install "tython"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com//oak9io/tython/releases/download/v0.0.6/tython_0.0.6_linux_amd64.tar.gz"
      sha256 "7578d968ff8863c50ce046ea47e09ed66efd75ee2d3db472f1a619f0b075413c"

      def install
        bin.install "tython"
      end
    end
  end

  def caveats
    <<~EOS
      ./tython -h or ./tython.exe -h
    EOS
  end
end
