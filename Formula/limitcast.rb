class Limitcast < Formula
  desc "Forecast, guard and stretch your Claude Code and Codex usage limits"
  homepage "https://limitcast.dev"
  url "https://github.com/SamStull9007/limitcast/releases/download/v0.19.3/limitcast-0.19.3.tgz"
  sha256 "a1ab98c0191887d2c3c8057d070d72d8d35f245ca5b89ebccd701968b53f597e"
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
