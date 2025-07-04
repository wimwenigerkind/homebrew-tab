# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wswcli < Formula
  desc "wswcli"
  homepage "https://github.com/wimwenigerkind/wswcli"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/wimwenigerkind/wswcli/releases/download/v2.0.0/wswcli_Darwin_x86_64.tar.gz"
      sha256 "a6cef636beb9220b8aca5fe41b650ff3a0c3ba99f277191eb022cfa5590df27d"

      def install
        bin.install "wswcli"
      end
    end
    on_arm do
      url "https://github.com/wimwenigerkind/wswcli/releases/download/v2.0.0/wswcli_Darwin_arm64.tar.gz"
      sha256 "7d403fd762ff4697bf10ad6c6df78568b26c6030e1782f4bfc9b63d0b0e7df60"

      def install
        bin.install "wswcli"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/wimwenigerkind/wswcli/releases/download/v2.0.0/wswcli_Linux_x86_64.tar.gz"
        sha256 "e07834c19e0f966cb5a96c2f0f9651805ef03758ca49e58e1fdbcc31b75b35bf"

        def install
          bin.install "wswcli"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/wimwenigerkind/wswcli/releases/download/v2.0.0/wswcli_Linux_arm64.tar.gz"
        sha256 "f3d9daa7f9a5cd8d23615b822c054e78c2830db833c3e80d9eefc2d6fc3a35fd"

        def install
          bin.install "wswcli"
        end
      end
    end
  end

  test do
    system "#{bin}/wswcli", "--version"
  end
end
