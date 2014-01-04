(add-to-list 'load-path
              "~/.emacs.d/vendor/yasnippet")
(require 'yasnippet)
(setq yas-snippet-dirs '("~/.emacs.d/vendor/yasnippet/yasmate/snippets"))
(yas-global-mode 1)
