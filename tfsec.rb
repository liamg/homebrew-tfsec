class Tfsec < Formula
  desc "Static analysis powered security scanner for your terraform code"
  homepage "https://github.com/liamg/tfsec"
  url "https://github.com/liamg/tfsec/archive/v0.12.0.tar.gz"
  sha256 "e04bf57164fc59cd346ba4e68a8bae15a12cc1bd4e223e342654ea35385c67f0"

  depends_on "go" => :build

  def install
    system "scripts/install.sh", "v0.12.0"
    bin.install "tfsec" => "tfsec"
  end

  test do
    system "#{bin}/tfsec", "--help"
  end
end
