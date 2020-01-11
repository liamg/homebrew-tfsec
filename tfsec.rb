class Tfsec < Formula
  desc "Static analysis powered security scanner for your terraform code"
  homepage "https://github.com/liamg/tfsec"
  url "https://github.com/liamg/tfsec/archive/v0.16.0.tar.gz"
  sha256 "b2b0da6cc753b3e0c6cad4e7b5ec83648016d7ee5da951a8e5bd4641da4475a6"

  depends_on "go" => :build

  def install
	  system "scripts/install.sh", "v0.16.0"
    bin.install "tfsec" => "tfsec"
  end

  test do
    system "#{bin}/tfsec", "--help"
  end
end
