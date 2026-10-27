class Limitcast < Formula
  desc "Forecast, guard and stretch your Claude Code and Codex usage limits"
  homepage "https://limitcast.dev"
  url "https://registry.npmjs.org/limitcast/-/limitcast-0.14.0.tgz"
  sha256 "9d1a1711e71cdb5354825e81300f67fa6c97e889742f42cbb2d6453256754b21"
  license "Elastic-2.0"

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
