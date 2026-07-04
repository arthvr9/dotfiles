#!/usr/bin/env bash
# Restaura o rice GNOME do Arthur a partir dos dotfiles.
# Uso: ./install.sh
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo ">> Copiando configs..."
mkdir -p ~/.config/ghostty ~/.config/gtk-3.0
cp "$DIR/ghostty/config"    ~/.config/ghostty/config
cp "$DIR/gtk-3.0/bookmarks" ~/.config/gtk-3.0/bookmarks

echo ">> Copiando wallpapers..."
mkdir -p ~/.local/share/backgrounds
cp "$DIR"/wallpapers/*.png ~/.local/share/backgrounds/ 2>/dev/null || true

echo ">> Carregando dconf..."
dconf load /org/gnome/desktop/interface/  < "$DIR/dconf/interface.conf"
dconf load /org/gnome/desktop/background/  < "$DIR/dconf/background.conf"
dconf load /org/gnome/desktop/wm/          < "$DIR/dconf/wm.conf"      2>/dev/null || true
dconf load /org/gnome/shell/extensions/    < "$DIR/dconf/extensions.conf"
dconf load /org/gnome/shell/               < "$DIR/dconf/shell.conf"

cat <<'EOF'

>> Pronto! Passos manuais que faltam:
   1. Instale as 12 extensões (veja EXTENSIONS.md) via extensions.gnome.org
      ou copie ~/.local/share/gnome-shell/extensions/ manualmente.
   2. Instale as fontes (assets-list.txt): Poppins, Space Mono, JetBrains Mono NF
      em ~/.local/share/fonts/ e rode `fc-cache -f`.
   3. Instale o icon theme Everforest-Light em ~/.local/share/icons/.
   4. Faça LOGOUT/LOGIN (Wayland só carrega extensões novas no relogin).
EOF
