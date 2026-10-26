class Limitcast < Formula
  desc "Forecast, guard and stretch your Claude Code and Codex usage limits"
  homepage "https://limitcast.dev"
  url "https://registry.npmjs.org/limitcast/-/limitcast-0.11.3.tgz"
  sha256 "672fdc94319c9c6df46a9c43081dfe5d8b1931320ae15880f897239c4b3937cd"
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
