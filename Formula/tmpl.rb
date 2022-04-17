class Tmpl < Formula
  version "v3.1.2"
  desc "Lightweight Go template executor"
  homepage "https://github.com/jimmysawczuk/tmpl"
  url "https://github.com/jimmysawczuk/tmpl/archive/#{version}.zip"
  sha256 "2d4ac4e2793e84fe3e7e5fce1872c1714ebaa643fc3568891dc80ce8fcec6d56"

  depends_on "go" => :build

  def install
    mkdir bin
    system "go", "build", "-trimpath", "-ldflags", "-X main.version=#{version}", "-o", bin, "github.com/jimmysawczuk/tmpl/..."
  end
end
