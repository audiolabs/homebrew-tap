cask :v1 => 'cisco' do
  version '3.1.05152'
  sha256 '5710c674e238244d294cddb55b57d54ea28050764d914bb54f91c96ccf95c325'

  url 'http://www.rrze.uni-erlangen.de/dienste/internet-zugang/vpn/anyconnect-macosx-i386-3.1.05152-k9.dmg'
  homepage 'hhttp://www.rrze.uni-erlangen.de/dienste/internet-zugang/vpn/cisco-vpn.shtml'
  license :closed

  pkg 'AnyConnect.pkg'
end
