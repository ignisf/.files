(add-to-list 'load-path
              "~/.emacs.d/vendor/yasnippet")
(require 'yasnippet)
(setq yas-snippet-dirs '("~/.emacs.d/vendor/yasnippet/extras/imported"))
(yas-global-mode 1)
