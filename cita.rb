# coding: utf-8
# CITA Formula
class Cita < Formula
  desc "A high performance blockchain for enterprise users."
  homepage "https://github.com/cryptape/cita"

  version "0.24.0"
  url "https://github.com/cryptape/cita/releases/download/v0.24.0/cita_secp256k1_sha3.tar.gz"
  sha256 "05dd4cea809e2f10c85b1a798e636d595968d4bea4e969a7be15cf89542352c2"
  
  def install
    libexec.install Dir["*"]
    
    bin.install_symlink Dir["#{libexec}/bin/cita"]
    bin.install_symlink Dir["#{libexec}/bin/cita-env"]
    bin.install_symlink Dir["#{libexec}/bin/cita-config"]
  end

  def caveats; <<~EOS
     By default, binaries installed by cita will be placed into:

     #{libexec}

     Usage: cita_commander <command> <node> [options]
     where <command> is one of the following:
         { help | create | port | setup | start | stop | restart
           ping | top | backup | clean | logs | logrotate }
     Run `cita help` for more detailed information.

     happy hacking!!! 🧙
  EOS
  end
end
