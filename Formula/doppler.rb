# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Doppler < Formula
  desc "The official Doppler CLI for managing your secrets"
  homepage "https://doppler.com"
  version "3.58.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/DopplerHQ/cli/releases/download/3.58.4/doppler_3.58.4_macOS_arm64.tar.gz"
      sha256 "9c3843744fa89002ef257dc8d2efecbaef3f56ed2c6f019373a737a80c2d5179"

      def install
        bin.install "doppler"
        bash_completion.install "completions/doppler.bash" => "doppler"
        zsh_completion.install "completions/doppler.zsh" => "_doppler"
        fish_completion.install "completions/doppler.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/DopplerHQ/cli/releases/download/3.58.4/doppler_3.58.4_macOS_amd64.tar.gz"
      sha256 "f5ace0dc91b438ccee819b3d89c6fa1b0075d6134f11480f15d7671c7117e5d1"

      def install
        bin.install "doppler"
        bash_completion.install "completions/doppler.bash" => "doppler"
        zsh_completion.install "completions/doppler.zsh" => "_doppler"
        fish_completion.install "completions/doppler.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/DopplerHQ/cli/releases/download/3.58.4/doppler_3.58.4_linux_amd64.tar.gz"
      sha256 "93461ede9de5a4022d1a7d395a1a2521c5c87eadf2c975c2cf06fdb976f24d79"

      def install
        bin.install "doppler"
        bash_completion.install "completions/doppler.bash" => "doppler"
        zsh_completion.install "completions/doppler.zsh" => "_doppler"
        fish_completion.install "completions/doppler.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/DopplerHQ/cli/releases/download/3.58.4/doppler_3.58.4_linux_arm64.tar.gz"
      sha256 "b3e2442034243fc15f737dc22becbfe6ce9a9d433d470fbf1bda69b276c1c61a"

      def install
        bin.install "doppler"
        bash_completion.install "completions/doppler.bash" => "doppler"
        zsh_completion.install "completions/doppler.zsh" => "_doppler"
        fish_completion.install "completions/doppler.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/DopplerHQ/cli/releases/download/3.58.4/doppler_3.58.4_linux_armv6.tar.gz"
      sha256 "6a38056dd2bc39c2886bc2228d181d1aaa7153e9f2430b13e8bab2644e836bb9"

      def install
        bin.install "doppler"
        bash_completion.install "completions/doppler.bash" => "doppler"
        zsh_completion.install "completions/doppler.zsh" => "_doppler"
        fish_completion.install "completions/doppler.fish"
      end
    end
  end

  test do
    system "#{bin}/doppler --version"
  end
end
