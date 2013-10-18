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
		       "ido"
		       "magit"
		       "multi-web"
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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("0f3da951162297f5ee42338c5cc52e4d06987691d3dcfe24cb879cce038ad8a8" "af5652fce72c40a4fed3f72ed82658e5bc587f41dac393d68fa6d78be11b1c81" "5b9edbec57f7b722d5fd77285bc0b9332210690d40030c0d537dd3f00a35bfea" "06cc095b12bc4fa5e9ed453d8421efc84f446a2002ad4cad7f6606a149f391f9" default)))
 '(ecb-options-version "2.40" t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
