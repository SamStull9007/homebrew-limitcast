class Limitcast < Formula
  desc "Forecast, guard and stretch your Claude Code and Codex usage limits"
  homepage "https://limitcast.dev"
  url "https://registry.npmjs.org/limitcast/-/limitcast-0.11.5.tgz"
  sha256 "7338ec616ce580bf6d2fddf74049991093abf97f5caac5e81724164fe48924b3"
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
