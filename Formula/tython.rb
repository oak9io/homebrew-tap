# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tython < Formula
  desc "Tython supports testing and applying (i.e. running) user-created SaC blueprints. This can be done locally on your own machine or through integrations with oak9."
  homepage "https://oak9.io/"
  version "0.0.11"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com//oak9io/tython/releases/download/v0.0.11/tython_0.0.11_darwin_amd64.tar.gz"
      sha256 "fb20672d2f53cc26a792fb8b5e174920aacaa4eea31ddaf569262c32e5e9308c"

      def install
        bin.install "tython"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com//oak9io/tython/releases/download/v0.0.11/tython_0.0.11_darwin_arm64.tar.gz"
      sha256 "c06896a8bb1332d974e5e1a8b1bebba855fa083328cc1a47699fb6a1525ec829"

      def install
        bin.install "tython"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com//oak9io/tython/releases/download/v0.0.11/tython_0.0.11_linux_arm64.tar.gz"
      sha256 "527e3500536943264c3d4e748bd97ccba00c21cac9430974403cb2e02a02ce75"

      def install
        bin.install "tython"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com//oak9io/tython/releases/download/v0.0.11/tython_0.0.11_linux_amd64.tar.gz"
      sha256 "ef747bb745fe5a2b9d3d3c0ba25b5d8029d55f27af5dbdbd5578d9e902826c6d"

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
