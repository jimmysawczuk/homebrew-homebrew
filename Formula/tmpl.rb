class Tmpl < Formula
  version "v3.0.0-beta1"
  desc "Lightweight Go template executor"
  homepage "https://github.com/jimmysawczuk/tmpl"
  url "https://github.com/jimmysawczuk/tmpl/archive/#{version}.zip"
  sha256 "09c84bea8a2df89f67995b66e71e22d2b503247e43446f82606395feeffa9df8"

  depends_on "go" => :build

  def install
    mkdir bin
    system "go", "build", "-trimpath", "-ldflags", "-X main.version=#{version}", "-o", bin, "github.com/jimmysawczuk/tmpl/..."
  end
end
