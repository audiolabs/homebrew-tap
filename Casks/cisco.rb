class Cisco < Cask
  url 'http://www.rrze.uni-erlangen.de/dienste/internet-zugang/vpn/anyconnect-macosx-i386-3.1.05152-k9.dmg'
  homepage 'hhttp://www.rrze.uni-erlangen.de/dienste/internet-zugang/vpn/cisco-vpn.shtml'
  version '3.1.05152'
  sha256 '7136864e0b27d8b2c153abbebb7f0c09b96e7d3a93824eb307e6044332b1fbfb'
  install 'AnyConnect.pkg'
end
