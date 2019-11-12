class Tfsec < Formula
  desc "Static analysis powered security scanner for your terraform code"
  homepage "https://github.com/liamg/tfsec"
  url "https://github.com/liamg/tfsec/archive/v0.11.1.tar.gz"
  sha256 "97c020471cbc5c32c05a1af9d0d8d533097d64edd3b2ace553f2000072d8efcf"

  depends_on "go" => :build

  def install
    system "scripts/install.sh", "v0.11.1"
    bin.install "tfsec" => "tfsec"
  end

  test do
    system "#{bin}/tfsec", "--help"
  end
end
