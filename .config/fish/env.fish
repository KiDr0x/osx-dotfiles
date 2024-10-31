# set locale
set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8

# python env
set -gx PYENV_ROOT $HOME/.pyenv
fish_add_path -aP $PYENV_ROOT/bin
status is-login; and pyenv init --path | source
pyenv init - | source
set -Ux PYTHON_CONFIGURE_OPT '--enable-framework'

# Configure fzf to use fd by default (fd respects .gitignore defaults)
set -gx FZF_DEFAULT_COMMAND 'fd --type f'


# GOLANG (https://medium.com/@joshuacrass/go-brew-fish-aa4537becd9f)
set -Ux GOPATH $HOME/MyProject/Golang
set -Ux GOROOT (brew --prefix golang)/libexec
fish_add_path -g $GOROOT/bin $GOPATH/bin $PATH

# PHP
fish_add_path -g /usr/local/opt/php@7.4/bin /usr/local/opt/php@7.4/sbin $PATH
set -gx LDFLAGS "-L/usr/local/opt/php@7.4/lib"
set -gx CPPFLAGS "-I/usr/local/opt/php@7.4/include"

fish_add_path -aP $HOME/.krew/bin $HOME/.cargo/bin /usr/local/opt/qt/bin  $DNS_DIAG /usr/local/opt/openjdk/bin /usr/local/opt/postgresql@10/bin /usr/local/opt/python/Frameworks/Python.framework/Versions/3.9/Python /usr/local/opt/openvpn/sbin /usr/local/sbin

# For pkg-config to find libffi you may need to set:
set -Ux PKG_CONFIG_PATH /usr/local/opt/qt/lib/pkgconfig /usr/local/opt/libffi/lib/pkgconfig

# libffi is keg-only, which means it was not symlinked into /usr/local,
# because some formulae require a newer version of libffi.
# For compilers to find libffi you may need to set:
set -Ux LDFLAGS '-L/usr/local/opt/libffi/lib'

set -Ux  DNS_DIAG $HOME/Tools/Network/DNS/dnsdiag

set CPPFLAGS '-I/usr/local/opt/openjdk/include'

# password store vars
set PASSWORD_STORE_ENABLE_EXTENSIONS 'true'
set -Ux PASSWORD_STORE_EXTENSIONS_DIR /usr/local/lib/password-store/extensions
