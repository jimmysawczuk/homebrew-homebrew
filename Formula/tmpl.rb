class Tmpl < Formula
  version "v2.1.0"
  desc "Lightweight Go template executor"
  homepage "https://github.com/jimmysawczuk/tmpl"
  url "https://github.com/jimmysawczuk/tmpl/archive/#{version}.zip"
  sha256 "04051d02dc15e11e3c3f7786930ad1f02763cba48ba1f1fa9b2bea5ba83fb7ff"

  depends_on "go" => :build

  def install
    mkdir bin
    system "go", "build", "-trimpath", "-ldflags", "-X main.version=#{version}", "-o", bin, "github.com/jimmysawczuk/tmpl/..."
  end
end
