class Tmpl < Formula
  version "v3.2.3"
  desc "Lightweight Go template executor"
  homepage "https://github.com/jimmysawczuk/tmpl"
  url "https://github.com/jimmysawczuk/tmpl/archive/#{version}.zip"
  sha256 "a9407f34973a80e6c896e20b4194a1cc1dea09938e3cff832306bdd49cfb7b55"

  depends_on "go" => :build

  def install
    mkdir bin
    system "go", "build", "-trimpath", "-ldflags", "-X main.version=#{@version}", "-o", bin, "github.com/jimmysawczuk/tmpl/..."
  end
end
