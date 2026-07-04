# Extensões GNOME Shell (48, Wayland)

12 extensões, todas habilitadas. Instaladas sem sudo em
`~/.local/share/gnome-shell/extensions/`. Os settings de cada uma estão em
`dconf/extensions.conf`.

| Extensão | UUID |
|---|---|
| Blur My Shell | `blur-my-shell@aunetx` |
| Open Bar | `openbar@neuromorph` |
| Burn My Windows | `burn-my-windows@schneegans.github.com` |
| Compiz Windows Effect (wobble) | `compiz-windows-effect@hermes83.github.com` |
| Just Perfection | `just-perfection-desktop@just-perfection` |
| Caffeine | `caffeine@patapon.info` |
| Clipboard Indicator | `clipboard-indicator@tudmotu.com` |
| Coverflow Alt-Tab | `CoverflowAltTab@palatis.blogspot.com` |
| Dash to Dock | `dash-to-dock@micxgx.gmail.com` |
| Media Controls | `mediacontrols@cliffniff.github.com` |
| Unlock Dialog Background | `unlockDialogBackground@sun.wxg@gmail.com` |
| User Themes | `user-theme@gnome-shell-extensions.gcampax.github.com` |

## O truque da barra (Open Bar + Blur My Shell)
- Open Bar: `bartype='Floating'`, fundo 100% transparente
  (`bgalpha=0.0` **e** `auto-bgalpha=false`, senão recomputa).
- Blur My Shell faz o blur estático arredondado atrás
  (pipeline `default_rounded`, radius 30, brightness 0.6).
- Cores auto-geradas do wallpaper (`bg-change=true`, `trigger-autotheme`).
- Fonte da barra: Poppins Bold 12.

> Wayland: extensão nova só carrega após logout/login. Open Bar não relê o
> dconf gravado por fora — toggle `trigger-reload` ou
> `gnome-extensions disable/enable`.
