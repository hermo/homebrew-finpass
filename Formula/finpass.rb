# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Finpass < Formula
  desc "finpass generates passwords using Finnish language words"
  homepage "https://github.com/hermo/finpass"
  version "1.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hermo/finpass/releases/download/v1.4.2/finpass_1.4.2_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f1952dca803d8c0bfa54f1b60eca95d42eae89361ad5495d9c80c059e723aee3"

      def install
        bin.install "finpass"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hermo/finpass/releases/download/v1.4.2/finpass_1.4.2_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9beb34a08da2fa1e17b4bc48792f9c5d18d857b0e7a3313eeac4b5700f4c0721"

      def install
        bin.install "finpass"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/hermo/finpass/releases/download/v1.4.2/finpass_1.4.2_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3109c2c0d98c6a332f00bce848b545c3a4c624483ed9bab59d1c2259d797c080"
      def install
        bin.install "finpass"
      end
    end
  end
end
