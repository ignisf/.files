(setq-default fill-column 80)
;;; Prevent Extraneous Tabs
(setq-default indent-tabs-mode nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(add-hook 'ruby-mode-hook 'whitespace-mode)
(add-hook 'nxml-mode-hook 'whitespace-mode)
(add-hook 'rinari-mode-hook 'whitespace-mode)
