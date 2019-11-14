class Tfsec < Formula
  desc "Static analysis powered security scanner for your terraform code"
  homepage "https://github.com/liamg/tfsec"
  url "https://github.com/liamg/tfsec/archive/v0.12.2.tar.gz"
  sha256 "3af7b67a072ff535fb0d599bd7fcb2dab43a3435ded261416317e654dc075337"

  depends_on "go" => :build

  def install
    system "scripts/install.sh", "v0.12.2"
    bin.install "tfsec" => "tfsec"
  end

  test do
    system "#{bin}/tfsec", "--help"
  end
end
