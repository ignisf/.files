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
		       "multiple-cursors"
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
		       "windows"
		       "yaml"
		       "yasnippet"))
  (load (format "%s%s%s" "init-" element ".el")))
