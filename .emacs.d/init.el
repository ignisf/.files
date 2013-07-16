(add-to-list 'load-path "~/.emacs.d/elisp")
 
(dolist (element (list "packages"
		       "appearance"
		       "backups"
		       "magit"
		       "eshell"
		       "newline"
		       "yasnippet"
		       "delete"
		       "expand-region"
		       "fic"
		       "yaml"
		       "haml"
		       "rvm"
		       "sass"
		       "coffee"
		       "erc"
		       "mark-multiple"
		       "diff-hl"))
  (load (format "%s%s%s" "init-" element ".el")))
