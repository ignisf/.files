;;; enotify-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (enotify-README enotify-version enotify-minor-mode)
;;;;;;  "enotify" "enotify.el" (21192 39799 918217 346000))
;;; Generated autoloads from enotify.el

(defvar enotify-minor-mode nil "\
Non-nil if Enotify minor mode is enabled.
See the command `enotify-minor-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `enotify-minor-mode'.")

(custom-autoload 'enotify-minor-mode "enotify" nil)

(autoload 'enotify-minor-mode "enotify" "\
Toggle display of notifications in the mode line.

\(fn &optional ARG)" t nil)

(autoload 'enotify-version "enotify" "\


\(fn)" t nil)

(autoload 'enotify-README "enotify" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (enotify-mode-line-update-notification) "enotify-mode-line"
;;;;;;  "enotify-mode-line.el" (21192 39800 111553 355000))
;;; Generated autoloads from enotify-mode-line.el

(autoload 'enotify-mode-line-update-notification "enotify-mode-line" "\
Updates the notification \"icon\" associated with SLOT-ID to
NOTIFICATION.
NOTIFICATION has to be specified in this format:
  (:text <message>
   :face :warning|:standard|:failure|:success|face
   :mouse-1 <click-handler>
   :help <tooltip text>)

\(fn SLOT-ID NOTIFICATION &optional POS)" nil nil)

(defalias 'enotify-notify 'enotify-mode-line-update-notification)

;;;***

;;;### (autoloads (enotify-port) "enotify-network" "enotify-network.el"
;;;;;;  (21192 39799 724881 337000))
;;; Generated autoloads from enotify-network.el

(autoload 'enotify-port "enotify-network" "\
Displays a message indicating what port is bound to the
enotify server.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("enotify-group.el" "enotify-messages.el"
;;;;;;  "enotify-pkg.el" "enotify-plugin-support.el" "enotify-tdd.el"
;;;;;;  "footer.el" "header.el") (21192 39800 237317 341000))

;;;***

(provide 'enotify-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; enotify-autoloads.el ends here
