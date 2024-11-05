# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Indev < Formula
  desc "A CLI for managing developer platform resources."
  homepage "https://developers.intility.com"
  version "0.3.3-5"

  on_macos do
    on_intel do
      url "https://github.com/intility/indev/releases/download/v0.3.3-5/indev_darwin_x86_64.tar.gz",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["DOWNLOADER_GITHUB_TOKEN"]}"
        ]
      sha256 "8040498b4fc3cb2f2902775c8e632ba719701cf99926410e6da0270f0254b056"

      def install
        bin.install "indev"
        bash_completion.install "completions/indev.bash" => "indev"
        zsh_completion.install "completions/indev.zsh" => "_indev"
        fish_completion.install "completions/indev.fish"
      end
    end
    on_arm do
      url "https://github.com/intility/indev/releases/download/v0.3.3-5/indev_darwin_arm64.tar.gz",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["DOWNLOADER_GITHUB_TOKEN"]}"
        ]
      sha256 "b0dac12404847f1ed4427d10a3078ace8b7c4a88988a11ef45cdfe22cec44292"

      def install
        bin.install "indev"
        bash_completion.install "completions/indev.bash" => "indev"
        zsh_completion.install "completions/indev.zsh" => "_indev"
        fish_completion.install "completions/indev.fish"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/intility/indev/releases/download/v0.3.3-5/indev_linux_x86_64.tar.gz",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["DOWNLOADER_GITHUB_TOKEN"]}"
          ]
        sha256 "dd3602577980244ede9c654f463ecc7cc27fddacc224ac107b935f7b4ec148da"

        def install
          bin.install "indev"
          bash_completion.install "completions/indev.bash" => "indev"
          zsh_completion.install "completions/indev.zsh" => "_indev"
          fish_completion.install "completions/indev.fish"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/intility/indev/releases/download/v0.3.3-5/indev_linux_arm64.tar.gz",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["DOWNLOADER_GITHUB_TOKEN"]}"
          ]
        sha256 "3793bfaffca3089003c79bc6c6349436f660b230aef6162e6d584734fc79596c"

        def install
          bin.install "indev"
          bash_completion.install "completions/indev.bash" => "indev"
          zsh_completion.install "completions/indev.zsh" => "_indev"
          fish_completion.install "completions/indev.fish"
        end
      end
    end
  end
end
