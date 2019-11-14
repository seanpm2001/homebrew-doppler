# This file was generated by GoReleaser. DO NOT EDIT.
class Doppler < Formula
  desc "The official Doppler CLI for managing your secrets and config"
  homepage "https://doppler.com"
  version "0.1.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/DopplerHQ/cli/releases/download/v0.1.1/doppler_0.1.1_macOS_x86_64.tar.gz"
    sha256 "933889dcf51351c668ba98f107e6ccb19c7c83694038fbb6fb66d6b256c07ba3"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/DopplerHQ/cli/releases/download/v0.1.1/doppler_0.1.1_linux_x86_64.tar.gz"
      sha256 "a76a1a26460cab6677651108461170f1771e25e43f0f1c05d7fc44ab2bd8ad55"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/DopplerHQ/cli/releases/download/v0.1.1/doppler_0.1.1_linux_arm64.tar.gz"
        sha256 "629ac0dc0ade89d5bbc2f13ce6ca99484eb352492082274ba655c967d4639098"
      else
        url "https://github.com/DopplerHQ/cli/releases/download/v0.1.1/doppler_0.1.1_linux_armv6.tar.gz"
        sha256 "f9e0898c7d490d6855e52bd4727f1a832589244a22a914002e2a7e8fd06d2189"
      end
    end
  end

  def install
    bin.install "doppler"
  end

  test do
    system "#{bin}/doppler --version"
  end
end
