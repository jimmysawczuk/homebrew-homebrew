class ScmStatus < Formula
  version "v2.3.0"
  desc "Repository status snapshot generator"
  homepage "jimmysawczuk.github.io/scm-status"
  url "https://github.com/jimmysawczuk/scm-status/archive/#{version}.zip"
  sha256 "b6947fc9f0c65329ab05baf8fb39c6e17ca1ed5242981efeba888d25e8dac46c"

  depends_on "go" => :build

  def install
    mkdir bin
    system "go", "build", "-trimpath", "-ldflags", "-X main.version=#{version}", "-o", bin, "github.com/jimmysawczuk/scm-status/..."
  end
end
