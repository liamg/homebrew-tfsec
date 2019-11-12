class Tfsec < Formula
  desc "Static analysis powered security scanner for your terraform code"
  homepage "https://github.com/liamg/tfsec"
  url "https://github.com/liamg/tfsec/archive/v0.10.0.tar.gz"
  sha256 "f2c07a2fb51952aea47262f3cbc27d1ace370225966a366cfc4fbb3c74b7eb59"

  depends_on "go" => :build

  def install
    system "install.sh"
    bin.install ".tfsec_install/bin/tfsec" => "tfsec"
  end

  test do
    system "#{bin}/tfsec", "--help"
  end
end
