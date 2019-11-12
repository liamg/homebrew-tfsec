class Tfsec < Formula
  desc "Static analysis powered security scanner for your terraform code"
  homepage "https://github.com/liamg/tfsec"
  url "https://github.com/liamg/tfsec/archive/test-brew.tar.gz"
  sha256 "b26630e95dd343390396f47fff07b571bdf953498302fb609c9573c2d9200ecc"

  depends_on "go" => :build

  def install
    system "scripts/install.sh"
    bin.install ".tfsec_install/bin/tfsec" => "tfsec"
  end

  test do
    system "#{bin}/tfsec", "--help"
  end
end
