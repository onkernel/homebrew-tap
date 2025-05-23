# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kernel < Formula
  desc "CLI for Kernel deployment and invocation"
  homepage "https://docs.onkernel.com"
  version "0.1.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://onkernel-public.s3.us-east-1.amazonaws.com/releases/download/cli/0.1.8/kernel_0.1.8_darwin_amd64.tar.gz"
      sha256 "4f41f8e3e32220b0877d550f9f0782b383d8fd723644f1a134e75c6209e86f8c"

      def install
        bin.install "kernel"
      end
    end
    if Hardware::CPU.arm?
      url "https://onkernel-public.s3.us-east-1.amazonaws.com/releases/download/cli/0.1.8/kernel_0.1.8_darwin_arm64.tar.gz"
      sha256 "db5076daac540262519c7d09271982c9d05f744a67b286fb34bf9255a8318103"

      def install
        bin.install "kernel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://onkernel-public.s3.us-east-1.amazonaws.com/releases/download/cli/0.1.8/kernel_0.1.8_linux_amd64.tar.gz"
      sha256 "835827cb323b614b89ec0c64a74c9f7f8beb0c933f49ec559782e81ce7ef6a03"
      def install
        bin.install "kernel"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://onkernel-public.s3.us-east-1.amazonaws.com/releases/download/cli/0.1.8/kernel_0.1.8_linux_arm64.tar.gz"
      sha256 "a4849b61fe8e2115e5bec0b7bd2fd34e417a2e160abe815c36ab2146811e8143"
      def install
        bin.install "kernel"
      end
    end
  end

  test do
    system "#{bin}/kernel", "--version"
  end
end
