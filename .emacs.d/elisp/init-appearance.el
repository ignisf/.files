;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'set-default-font) (set-default-font "monospace-13"))

;; Truncate everything
(set-default 'truncate-lines t)
(setq truncate-partial-width-windows t)

;; No splash screen please ... jeez
(setq inhibit-startup-message t)

(show-paren-mode t)
(blink-cursor-mode 0)

;; (load-theme 'ceti t)
(load-theme 'gnome t)
