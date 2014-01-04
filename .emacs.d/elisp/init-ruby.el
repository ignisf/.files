;; Rake files are ruby, too, as are gemspecs, rackup files, and gemfiles.
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))

(global-rinari-mode)

(add-hook 'ruby-mode-hook 'robe-mode)
;; (add-hook 'ruby-mode-hook 'yard-mode)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)

(require 'auto-complete-config)
(ac-config-default)
(add-hook 'ruby-mode-hook 'auto-complete-mode)
(setq ac-sources '(ac-source-words-in-buffer ac-source-words-in-same-mode-buffers ac-source-robe))
