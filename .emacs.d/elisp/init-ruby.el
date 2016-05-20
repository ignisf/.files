;; Rake files are ruby, too, as are gemspecs, rackup files, and gemfiles.
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.jbuilder$" . enh-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

(global-rbenv-mode)
(rbenv-use-global)

(global-rinari-mode)
(add-hook 'ruby-compilation-mode-hook 'ruby-compilation-minor-mode)

(add-hook 'enh-ruby-mode-hook 'robe-mode)
(add-hook 'enh-ruby-mode-hook 'subword-mode)
(add-hook 'enh-ruby-mode-hook 'yard-mode)
(add-hook 'enh-ruby-mode-hook 'flymake-ruby-load)


(require 'auto-complete-config)
(ac-config-default)
(define-key ac-mode-map (kbd "<backtab>") 'auto-complete)
(add-hook 'enh-ruby-mode-hook 'auto-complete-mode)
(add-hook 'enh-ruby-mode-hook 'autopair-mode)
(add-hook 'slim-mode-hook 'autopair-mode)
(setq ac-sources '(ac-source-words-in-buffer ac-source-words-in-same-mode-buffers))
(add-hook 'robe-mode-hook 'ac-robe-setup)
