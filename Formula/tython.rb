# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tython < Formula
  desc "Tython supports testing and applying (i.e. running) user-created SaC blueprints. This can be done locally on your own machine or through integrations with oak9."
  homepage "https://oak9.io/"
  version "0.0.9"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com//oak9io/tython/releases/download/v0.0.9/tython_0.0.9_darwin_amd64.tar.gz"
      sha256 "984773ba732c58d45bb144c599a008926ed8f610b7c49026ada172a9b667121b"

      def install
        bin.install "tython"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com//oak9io/tython/releases/download/v0.0.9/tython_0.0.9_darwin_arm64.tar.gz"
      sha256 "afbd69b8208c226c57d5be84b7b8e3b26be58758d455133ea3b9c7c91bde1ec2"

      def install
        bin.install "tython"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com//oak9io/tython/releases/download/v0.0.9/tython_0.0.9_linux_arm64.tar.gz"
      sha256 "ec2ab4b13f0d85ae69fd6c9903a948bebaec4b02728c15e1836d710b7a5c9233"

      def install
        bin.install "tython"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com//oak9io/tython/releases/download/v0.0.9/tython_0.0.9_linux_amd64.tar.gz"
      sha256 "04f8fbb454b83b9f4b2ada27e02b90d8574c623e1cdd0f7d0466ef4866ad74cb"

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
