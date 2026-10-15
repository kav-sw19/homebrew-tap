# Homebrew formula for whosup, filled in by scripts/package.sh for each release.
class Whosup < Formula
  desc "Live terminal view of your coding-agent sessions, sub-agents and terminals"
  homepage "https://github.com/kav-sw19/whosup"
  url "https://github.com/kav-sw19/whosup/releases/download/v0.2.0/whosup-0.2.0-macos-universal.tar.gz"
  sha256 "d8056986313263b1d5c3807f2bb6013a30e7d754449a167270fe5f1498a3ed38"
  version "0.2.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "whosup"
  end

  test do
    assert_match "whosup", shell_output("#{bin}/whosup --help")
    assert_match "Fix flaky checkout test", shell_output("#{bin}/whosup --demo --once")
  end
end
