# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reduction < Formula
  desc "Stream processing engine"
  homepage "https://reduction.dev"
  version "0.0.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/reduction-dev/reduction/releases/download/v0.0.2/reduction_0.0.2_darwin_amd64"
      sha256 "7c5bd6a7d71eb9a27e223ca010f892db9c6cc6e9501148a2a67665884e47b2a7"

      def install
        bin.install "reduction_0.0.2_darwin_amd64" => "reduction"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/reduction-dev/reduction/releases/download/v0.0.2/reduction_0.0.2_darwin_arm64"
      sha256 "18a130848777dcd00217017bff81293769c1bbbd6d8641a8ed779443f4d3a602"

      def install
        bin.install "reduction_0.0.2_darwin_arm64" => "reduction"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/reduction-dev/reduction/releases/download/v0.0.2/reduction_0.0.2_linux_amd64"
        sha256 "88ca98d92be839175595762bb59b605bf56756bdfaf75a43eb62db0e811108f6"

        def install
          bin.install "reduction_0.0.2_linux_amd64" => "reduction"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/reduction-dev/reduction/releases/download/v0.0.2/reduction_0.0.2_linux_arm64"
        sha256 "c6d69f23dd997e88d8465bb3ee8e65091656b37f7ba662ae7aa913b60def81b2"

        def install
          bin.install "reduction_0.0.2_linux_arm64" => "reduction"
        end
      end
    end
  end

  test do
    system "#{bin}/reduction version"
  end
end
