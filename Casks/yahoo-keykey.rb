cask 'yahoo-keykey' do
  version '3'
  sha256 :no_check

  url "https://github.com/zonble/ykk_installer/releases/download/v#{version}/YahooKeyKey.pkg.zip"
  appcast 'https://github.com/zonble/ykk_installer'
  name 'Yahoo! KeyKey Chinese input method engine (IME)'
  homepage 'https://github.com/zonble/ykk_installer'

  pkg 'KeyKey.pkg'

  uninstall signal: [['TERM', 'com.yahoo.inputmethod.KeyKey.InstallerHelp']], pkgutil: 'com.yahoo.inputmethod.keykey'
end
