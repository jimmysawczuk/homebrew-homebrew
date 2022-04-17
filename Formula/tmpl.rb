class Tmpl < Formula
  version "v3.1.1"
  desc "Lightweight Go template executor"
  homepage "https://github.com/jimmysawczuk/tmpl"
  url "https://github.com/jimmysawczuk/tmpl/archive/#{version}.zip"
  sha256 "0ed7cd18bd96c6a05a7f9c012e4b3431f5f5a238226bfa48d785b4f7762f5480"

  depends_on "go" => :build

  def install
    mkdir bin
    system "go", "build", "-trimpath", "-ldflags", "-X main.version=#{version}", "-o", bin, "github.com/jimmysawczuk/tmpl/..."
  end
end
