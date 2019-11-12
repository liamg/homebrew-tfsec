class Tfsec < Formula
  desc "Static analysis powered security scanner for your terraform code"
  homepage "https://github.com/liamg/tfsec"
  url "https://github.com/liamg/tfsec/archive/v0.11.0.tar.gz"
  sha256 "134b58213f6572ee729e25ac81c178c8ae14ab010ab5ba13f207e3af7cd90cc7"

  depends_on "go" => :build

  def install
    system "scripts/install.sh", "v0.11.0"
    bin.install "tfsec" => "tfsec"
  end

  test do
    system "#{bin}/tfsec", "--help"
  end
end
