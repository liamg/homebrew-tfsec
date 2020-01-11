class Tfsec < Formula
  desc "Static analysis powered security scanner for your terraform code"
  homepage "https://github.com/liamg/tfsec"
  url "https://github.com/liamg/tfsec/archive/v0.15.1.tar.gz"
  sha256 "5d6677540f37af49b12cc5e348000d0769c088f2110bbe95bf61f2ed2ea80514"

  depends_on "go" => :build

  def install
	  system "scripts/install.sh", "v0.15.1"
    bin.install "tfsec" => "tfsec"
  end

  test do
    system "#{bin}/tfsec", "--help"
  end
end
