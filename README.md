# dotfiles — rice GNOME do Arthur

Rice **claro estilo "latte"** em GNOME Shell 48 / Debian 13 (Wayland).
Aparência: Adwaita claro + accent verde (Everforest-ish), ícones
Everforest-Light, fontes Poppins (UI) + Space Mono (mono), barra flutuante
transparente com blur.

## Estrutura
```
dotfiles/
├── install.sh          # restaura tudo (configs + dconf) — rode em máquina nova
├── EXTENSIONS.md       # as 12 extensões GNOME + o truque da barra
├── assets-list.txt     # fontes e ícones a instalar manualmente
├── ghostty/config      # terminal Ghostty
├── gtk-3.0/bookmarks   # atalhos do Nautilus
├── dconf/              # dumps do dconf (o coração do rice)
│   ├── extensions.conf # settings de TODAS as extensões (Open Bar, Blur, etc.)
│   ├── interface.conf  # tema, accent, fontes, ícones
│   ├── shell.conf      # extensões habilitadas, favoritos
│   ├── background.conf # wallpaper
│   └── wm.conf         # window manager
└── wallpapers/         # latte-light, latte-dark, miku
```

## Como restaurar
```bash
./install.sh
```
Depois: instalar extensões (EXTENSIONS.md), fontes e ícones (assets-list.txt),
e **fazer logout/login**.

## Como atualizar os dumps (depois de mexer no rice)
```bash
dconf dump /org/gnome/shell/extensions/  > dconf/extensions.conf
dconf dump /org/gnome/desktop/interface/ > dconf/interface.conf
dconf dump /org/gnome/shell/             > dconf/shell.conf
cp ~/.config/ghostty/config ghostty/config
```

> Nota: as fontes, o icon theme e o código das extensões não estão versionados
> aqui (são binários/pesados) — só a *configuração*. Veja `assets-list.txt`.
