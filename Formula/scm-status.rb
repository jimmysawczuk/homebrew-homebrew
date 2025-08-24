class ScmStatus < Formula
  version "v2.3.2"
  desc "Repository status snapshot generator"
  homepage "https://github.com/jimmysawczuk/scm-status"
  url "https://github.com/jimmysawczuk/scm-status/archive/#{version}.zip"
  sha256 "9c473423a583b9c93b377046ad2650801ea857e33006f2900476a7589a2e4f44"

  depends_on "go" => :build

  def install
    mkdir bin
    system "go", "build", "-trimpath", "-ldflags", "-X main.version=#{version}", "-o", bin, "github.com/jimmysawczuk/scm-status/..."
  end
end
