class Limitcast < Formula
  desc "Forecast, guard and stretch your Claude Code and Codex usage limits"
  homepage "https://limitcast.dev"
  url "https://registry.npmjs.org/limitcast/-/limitcast-0.12.0.tgz"
  sha256 "901ca6cebc0488e23e2130b4133f226b24a1d6052acc137d366203a25cbf2ab3"
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
