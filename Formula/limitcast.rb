class Limitcast < Formula
  desc "Forecast, guard and stretch your Claude Code and Codex usage limits"
  homepage "https://limitcast.dev"
  url "https://github.com/SamStull9007/limitcast/releases/download/v0.20.6/limitcast-0.20.6.tgz"
  sha256 "e4660eb9f397e56aa0383cef3c6b98141e5f5e0c1b5bbe473e7b15234a8b3b46"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  def caveats
    <<~EOS
      Wire limitcast into Claude Code (backs up your settings):
        limitcast install
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/limitcast --version")
  end
end
