(add-to-list 'load-path "~/.emacs.d/elisp")

(dolist (element (list "packages"
		       "appearance"
		       "auctex"
		       "backups"
		       "coffee"
		       "delete"
		       "diff-hl"
		       "ecb"
                       "enotify"
		       "erc"
		       "eshell"
		       "expand-region"
		       "fic"
		       "haml"
		       "hexcolour"
                       "highlights"
		       "ido"
		       "magit"
		       "multi-web"
		       "multiple-cursors"
		       "newline"
                       "org-redmine"
		       "rspec"
		       "rainbow"
		       "ruby"
		       "ruby-block"
		       "rvm"
                       "rust"
		       "sass"
                       "smex"
		       "smooth-scroll"
		       "style"
		       "twit"
                       "windmove"
		       "windows"
		       "yaml"
                       "yasnippet"))
  (load (format "%s%s%s" "init-" element ".el")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-use-quick-help nil)
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#f3f3f3" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#343a41"))
 '(coffee-tab-width 2)
 '(custom-safe-themes
   (quote
    ("2b35d317deb6cb76cb238f7bd20a92c22bd6c847fb9d9c98a2ab9d3d5eaee29d" "859a0c355ee929b8468b6d27922bb1c5f5edf5874adbab2e9f5f92c4ef9ae2d1" "c151d00bfe6dbcea54d401da4d8ab7fdd7e2281b48c50fb2715756cfd5b0f262" "16a7351a584a99b716d5e6467407721e8ec4b8dcda3900533cbda4e5df9a3f1b" "320057586e31aa2c7ae27ec6bc26d026c756428e14e910524eaabc433db81f3f" "5c89742df942d659fd8d127c0825d0435e2ff17ba7eb80466b1b1afa3a268e3e" "2fa9c2cbfb75ba534769740b1d7f19352868389020a8269283ff5f4e68303a3d" "bd1decf956437ca3d667a55e1bbaaaa83af8bc3d998ef59c876b598336ab5614" "f99832d44b17692e7928e6aae61b3a8b112e45a1c0713c37dbbedeacba17d21e" "cb051b6baedc3422b1cdf5073620956c12d55166da441622d1bf2c10d31036f8" "9e1fce520a92d38c72febd2d0e2a0164443ae63b20041bef89a1b5d424a25973" "dd6af3f0bd0c7934ffaa9c51485fadc0022e157f3a6960a6a24df43d42d9f91f" "70cff0a723166c85446a560421947f671dbbebb8829c0e6e26fbc5073914d72c" "4e711922153cad56ea86c7a35aef7d2653d76b76f4717eda1229e0e0438d4fee" "39a42b9e2394a103b42eeea74d1912fcf77d20ed125183fbe28a64da9089e2b6" "d32a8d26e68f7d6d02b86750083b6b63365ccf02a315635c61e4e21e712fe9dc" "0f3da951162297f5ee42338c5cc52e4d06987691d3dcfe24cb879cce038ad8a8" "af5652fce72c40a4fed3f72ed82658e5bc587f41dac393d68fa6d78be11b1c81" "5b9edbec57f7b722d5fd77285bc0b9332210690d40030c0d537dd3f00a35bfea" "06cc095b12bc4fa5e9ed453d8421efc84f446a2002ad4cad7f6606a149f391f9" default)))
 '(ecb-options-version "2.40" t)
 '(fci-rule-color "#343d46")
 '(ruby-block-highlight-face nil)
 '(send-mail-function (quote mailclient-send-it))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#cb4b16")
     (60 . "#b58900")
     (80 . "#859900")
     (100 . "#2aa198")
     (120 . "#268bd2")
     (140 . "#d33682")
     (160 . "#dc322f")
     (180 . "#cb4b16")
     (200 . "#b58900")
     (220 . "#859900")
     (240 . "#2aa198")
     (260 . "#268bd2")
     (280 . "#d33682")
     (300 . "#dc322f")
     (320 . "#cb4b16")
     (340 . "#b58900")
     (360 . "#859900"))))
 '(vc-annotate-very-old-color nil)
 '(wl-temporary-file-directory "/tmp/"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
