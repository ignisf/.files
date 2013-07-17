(add-to-list 'load-path "~/.emacs.d/elisp")
 
(dolist (element (list "packages"
		       "appearance"
		       "auctex"
		       "backups"
		       "coffee"
		       "delete"
		       "diff-hl"
		       "ecb"
		       "erc"
		       "eshell"
		       "expand-region"
		       "fic"
		       "haml"
		       "hexcolour"
		       "magit"
		       "mark-multiple"
		       "newline"
		       "rspec"
		       "rainbow"
		       "ruby"
		       "ruby-block"
		       "rvm"
		       "sass"
		       "smooth-scroll"
		       "style"
		       "twit"
		       "yaml"
		       "yasnippet"))
  (load (format "%s%s%s" "init-" element ".el")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("dc758223066a28f3c6ef6c42c9136bf4c913ec6d3b710794252dc072a3b92b14" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
