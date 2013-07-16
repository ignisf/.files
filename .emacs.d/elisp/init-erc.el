;; The following are commented out by default, but users of other
;; non-Emacs IRC clients might find them useful.
;; Kill buffers for channels after /part
(setq erc-kill-buffer-on-part t)

;; Kill buffers for private queries after quitting the server
(setq erc-kill-queries-on-quit t)

;; Kill buffers for server messages after quitting the server
(setq erc-kill-server-buffer-on-quit t)

;; open query buffers in the current window
(setq erc-query-display 'buffer)

;; Use the static function to fill
(setq erc-fill-function 'erc-fill-static)

;; Insert timestamps only on the left side
(setq erc-insert-timestamp-function 'erc-insert-timestamp-left)

;; Get rid of the header line
(setq erc-header-line-format nil)

;; Auto update the fill width on window resize
(add-hook 'window-configuration-change-hook 
	  '(lambda ()
	     (setq erc-fill-column (- (window-width) 2))))

;; exclude boring stuff from tracking
(erc-track-mode t)
(setq erc-track-exclude-types '("JOIN" "NICK" "PART" "QUIT" "MODE"
                                "324" "329" "332" "333" "353" "477"))

(setq erc-email-userid "ignisf")

;; Join the a couple of interesting channels
(setq erc-autojoin-channels-alist '(("ludost.net" "#marla")))

(defun ludost ()
  "Connect to IRC."
  (interactive)
  (erc-tls :server "irc.ludost.net" :port 6697
	   :nick "игнис"))
