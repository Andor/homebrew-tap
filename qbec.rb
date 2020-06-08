# This file was generated by GoReleaser. DO NOT EDIT.
class Qbec < Formula
  desc "Qbec (pronounced like the Canadian province) is a CLI tool that allows you to create Kubernetes objects on multiple Kubernetes clusters or namespaces configured correctly for the target environment in question."
  homepage "https://qbec.io/"
  version "0.12.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/splunk/qbec/releases/download/v0.12.0/qbec-darwin-amd64.tar.gz"
    sha256 "6664f12cf1d8df601b053e4dbceafec443b9f5f444f49f3d7c7975c0dc8dd6c1"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/splunk/qbec/releases/download/v0.12.0/qbec-linux-amd64.tar.gz"
      sha256 "42ca4b9d3e732dfd28e3860d0cc9f1a92cd802fc4ee296516d271bafce9b3c7d"
    end
  end

  def install
    bin.install "qbec"
  end

  test do
    system "#{bin}/qbec version"
  end
end
