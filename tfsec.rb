class Tfsec < Formula
  desc "Static analysis powered security scanner for your terraform code"
  homepage "https://github.com/liamg/tfsec"
  url "https://github.com/liamg/tfsec/archive/v0.19.0.tar.gz"
  sha256 "3f843df9d602749365638588dff08f259ec58cf018fb7db553e3f42fe4865547"

  depends_on "go" => :build

  def install
	  system "scripts/install.sh", "v0.19.0"
    bin.install "tfsec" => "tfsec"
  end

  test do
    system "#{bin}/tfsec", "--help"
  end
end
