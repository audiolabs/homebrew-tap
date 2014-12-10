cask :v1 => 'aulab' do
  version '2.2.2'
  sha256 'a4642cd86474597f64f84a0b7ff274ad9ebf7f5169fa7c4f562620733555369f'

  url 'https://www.apple.com/euro/itunes/mastered-for-itunes/docs/au_lab.zip'
  homepage 'https://www.apple.com/de/itunes/mastered-for-itunes/'
  license :closed

  app 'AU Lab.app'

  container :nested => 'AU Lab Image.dmg'
end
