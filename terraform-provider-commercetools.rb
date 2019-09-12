# This file was generated by GoReleaser. DO NOT EDIT.
class TerraformProviderCommercetools < Formula
  desc "Terraform provider for Commercetools"
  homepage "https://github.com/labd/terraform-provider-commercetools"
  version "0.18.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/labd/terraform-provider-commercetools/releases/download/0.18.3/terraform-provider-commercetools-0.18.3-darwin-amd64.zip"
    sha256 "0f8e34423bc2f16add4f5cd86bc0f3f91a50081b06e883b0e00441f8f52a4a6b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/labd/terraform-provider-commercetools/releases/download/0.18.3/terraform-provider-commercetools-0.18.3-linux-amd64.tar.gz"
      sha256 "22d33fbe8e4b3f4d629c6d0169f39c8ecf1bf0e311df18780e6f97ffa5d6f290"
    end
  end

  def install
    bin.install "terraform-provider-commercetools_v0.18.3"
  end

  def caveats; <<~EOS
    After installation, you must symlink the provider into Terraform's plugins directory.
    mkdir -p ~/.terraform.d/plugins/
    ln -sf /usr/local/Cellar/terraform-provider-commercetools/$VERSION/bin/terraform-provider-commercetools_v0.18.3 ~/.terraform.d/plugins/terraform-provider-commercetools
    Symlinking is necessary because Homebrew is sandboxed and cannot write to your home directory.
    Replace $VERSION above.
    If Homebrew is installing somewhere other than /usr/local/Cellar, update the path as well.
  EOS
  end

  test do
    system "#{bin}/terraform-provider-commercetools_v0.18.3", "-h"  # running bin directly gives error, exit code 1
  end
end
