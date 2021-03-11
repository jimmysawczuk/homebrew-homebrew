class ScmStatus < Formula
  desc "Repository status snapshot generator"
  homepage "jimmysawczuk.github.io/scm-status"
  url "https://github.com/jimmysawczuk/scm-status/archive/v2.2.3.zip"
  sha256 "0e2a8d835af6ef1877ff622c1a6a274d31f35f05e82a4b4c35a100d694db4531"
  version "v2.2.3"

  depends_on "go" => :build

  def install
    mkdir bin
    system "go", "build", "-trimpath", "-ldflags", "-X main.version=#{version}", "-o", bin, "github.com/jimmysawczuk/scm-status/..."
  end
end
