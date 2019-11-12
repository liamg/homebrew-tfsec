class Tfsec < Formula
  desc "Static analysis powered security scanner for your terraform code"
  homepage "https://github.com/liamg/tfsec"
  url "https://github.com/liamg/tfsec/archive/test-brew-2.tar.gz"
  sha256 "e7209a197ca206e6076bb7a3d618eb54dfac7043b3b4c846b6e160b4f662f3e1"

  depends_on "go" => :build

  def install
    system "scripts/install.sh"
    bin.install ".tfsec_install/bin/tfsec" => "tfsec"
  end

  test do
    system "#{bin}/tfsec", "--help"
  end
end
