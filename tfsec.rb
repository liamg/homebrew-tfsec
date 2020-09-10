class Tfsec < Formula
  desc "Static analysis powered security scanner for your terraform code"
  homepage "https://github.com/liamg/tfsec"
  url "https://github.com/liamg/tfsec/archive/v0.25.0.tar.gz"
  sha256 "710e4cef714ff2c9c8807206cc2ecdef36b6110c4a8f7aea2fb2e79056279b81"

  depends_on "go" => :build

  def install
	  system "scripts/install.sh", "v0.25.0"
    bin.install "tfsec" => "tfsec"
  end

  test do
    system "#{bin}/tfsec", "--help"
  end
end
