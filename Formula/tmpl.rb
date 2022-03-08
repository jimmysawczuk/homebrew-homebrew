class Tmpl < Formula
  version "v3.1.0"
  desc "Lightweight Go template executor"
  homepage "https://github.com/jimmysawczuk/tmpl"
  url "https://github.com/jimmysawczuk/tmpl/archive/#{version}.zip"
  sha256 "c2a057a89ff8c142374fcfab7eb01ad3bd870076cb25c3bafc918cbd771fbd86"

  depends_on "go" => :build

  def install
    mkdir bin
    system "go", "build", "-trimpath", "-ldflags", "-X main.version=#{version}", "-o", bin, "github.com/jimmysawczuk/tmpl/..."
  end
end
