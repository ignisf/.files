;; To use it in all buffers:
;; (global-diff-hl-mode)

;; Only in `prog-mode' buffers, with `vc-dir' integration:
(add-hook 'prog-mode-hook 'turn-on-diff-hl-mode)
(add-hook 'vc-dir-mode-hook 'turn-on-diff-hl-mode)
