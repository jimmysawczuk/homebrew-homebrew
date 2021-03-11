class ScmStatus < Formula
  desc "Repository status snapshot generator"
  homepage "jimmysawczuk.github.io/scm-status"
  url "https://github.com/jimmysawczuk/scm-status/archive/v2.2.3.zip"
  sha256 "b69f791fc4360331e34686f7f93936d78a6a8abae0f3809f980a463f74bc16f3"
  version "v2.2.3"

  depends_on "go" => :build

  def install
    mkdir bin
    system "go", "build", "-trimpath", "-ldflags", "-X main.version=#{version}", "-o", bin, "github.com/jimmysawczuk/scm-status/..."
  end
end
