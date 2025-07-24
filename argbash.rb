class Argbash < Formula
  desc "Bash argument parsing code generator"
  homepage "https://argbash.dev"
  url "https://github.com/matejak/argbash/archive/refs/tags/2.11.0.tar.gz"
  sha256 "a749518116624e0ff1f71c9eadfd28e8580c3be6534446fbcd421ab6a67d453e"
  license "NOASSERTION"

  depends_on "automake"

  def install
    cd "resources" do
      system "make", "install", "PREFIX=#{prefix}"
    end
  end

  test do
    system "false"
  end
end
