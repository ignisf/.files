;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'load-theme) (load-theme 'mediterranean t))
(if (fboundp 'set-default-font) (set-default-font "Monospace-10"))

;; No splash screen please ... jeez
(setq inhibit-startup-message t)

(show-paren-mode t)
(blink-cursor-mode 0)
