class Tfsec < Formula
  desc "Static analysis powered security scanner for your terraform code"
  homepage "https://github.com/liamg/tfsec"
  url "https://github.com/liamg/tfsec/archive/v0.14.0.tar.gz"
  sha256 "219161e999a815fca5e3361a29f5062ec6207ea0a386023bedfb146ac04f90b9"

  depends_on "go" => :build

  def install
	  system "scripts/install.sh", "v0.14.0"
    bin.install "tfsec" => "tfsec"
  end

  test do
    system "#{bin}/tfsec", "--help"
  end
end
