class Mkectl < Formula
  desc ""
  homepage "https://mirantis.github.io/mke-docs/"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/MirantisContainers/mke-release/releases/download/v4.0.1-rc.3/mkectl_darwin_x86_64.tar.gz"
    sha256 ""
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/MirantisContainers/mke-release/releases/download/v4.0.1-rc.3/mkectl_darwin_arm64.tar.gz"
    sha256 ""
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/MirantisContainers/mke-release/releases/download/v4.0.1-rc.3/mkectl_linux_x86_64.tar.gz"
    sha256 ""
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/MirantisContainers/mke-release/releases/download/v4.0.1-rc.3/mkectl_windows_arm64.zip"
    sha256 ""
  else
    odie "Unsupported platform"
  end

  def install
    # Install the binary into Homebrew's bin directory
    bin.install "mkectl"
  end

  test do
      assert_match "Version: v4.0.1-rc3", shell_output("#{bin}/mkectl version")
  end

end