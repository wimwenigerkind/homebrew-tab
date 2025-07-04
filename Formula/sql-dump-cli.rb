# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SqlDumpCli < Formula
  desc "Transform Shopware production dumps for local development"
  homepage "https://github.com/wimwenigerkind/sql-dump-cli"
  version "1.0.2"
  license "MIT"

  depends_on "mysql" => :optional

  on_macos do
    on_intel do
      url "https://github.com/wimwenigerkind/sql-dump-cli/releases/download/v1.0.2/sql-dump-cli_Darwin_x86_64.tar.gz"
      sha256 "5b50af38f9b2438bb4e7cdcaf67c4e1e06be03c53d470f77790e48eb38091ef7"

      def install
        bin.install "sql-dump-cli"
      end
    end
    on_arm do
      url "https://github.com/wimwenigerkind/sql-dump-cli/releases/download/v1.0.2/sql-dump-cli_Darwin_arm64.tar.gz"
      sha256 "57d9dbb216d4440f5b034bc9cbc288b41efc2cf48d4bfd20fd88bbcae5645d16"

      def install
        bin.install "sql-dump-cli"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/wimwenigerkind/sql-dump-cli/releases/download/v1.0.2/sql-dump-cli_Linux_x86_64.tar.gz"
        sha256 "1609d63a98aa7c0552e3077ef239a2f291691a7f4ac4d26bc40fa50bf0be8a96"

        def install
          bin.install "sql-dump-cli"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/wimwenigerkind/sql-dump-cli/releases/download/v1.0.2/sql-dump-cli_Linux_arm64.tar.gz"
        sha256 "636327dca6e87603c8605e5b494162bd1b14d8bc81488ea9a8742cdffb2a174a"

        def install
          bin.install "sql-dump-cli"
        end
      end
    end
  end

  test do
    system "#{bin}/sql-dump-cli", "--version"
  end
end
