class ScmStatus < Formula
  desc "Repository status snapshot generator"
  homepage "jimmysawczuk.github.io/scm-status"
  url "https://github.com/jimmysawczuk/scm-status/archive/v2.2.3.zip"
  sha256 "fa16a5d7f9041444b55c9ee61b24d6fc6ab83f2925145d2cd728457613143b2f"
  version "v2.2.3"

  depends_on "go" => :build

  def install
    mkdir bin
    system "go", "build", "-trimpath", "-ldflags", "-X main.version=#{version}", "-o", bin, "github.com/jimmysawczuk/scm-status/..."
  end
end
