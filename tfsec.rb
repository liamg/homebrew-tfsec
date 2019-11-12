class Tfsec < Formula
  desc "Static analysis powered security scanner for your terraform code"
  homepage "https://github.com/liamg/tfsec"
  url "https://github.com/liamg/tfsec/archive/test-brew-3.tar.gz"
  sha256 "90d2ca3dc5e1e28d6c64608fcf00dfe1b5a1ee0b39090627a269cb5207dbd2d4"

  depends_on "go" => :build

  def install
    system "scripts/install.sh"
    bin.install "tfsec" => "tfsec"
  end

  test do
    system "#{bin}/tfsec", "--help"
  end
end
