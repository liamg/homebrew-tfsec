class Tfsec < Formula
  desc "Static analysis powered security scanner for your terraform code"
  homepage "https://github.com/liamg/tfsec"
  url "https://github.com/liamg/tfsec/archive/v0.12.1.tar.gz"
  sha256 "925c29ddc5059a6b4f2e3a59b50bd8bdf156aaf6531db624dab556cf8858fc31"

  depends_on "go" => :build

  def install
    system "scripts/install.sh", "v0.12.1"
    bin.install "tfsec" => "tfsec"
  end

  test do
    system "#{bin}/tfsec", "--help"
  end
end
