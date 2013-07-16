;;; mediterranean-theme.el

;;; Code:

(deftheme mediterranean
  "Mediterranean theme.")

(let ((class '((class color) (min-colors 89))))
  (custom-theme-set-faces
   'mediterranean
   `(cursor ((,class (:background "#A52A2A"))))
   `(border-color ((,class (:background "#EDEDED"))))
   `(default ((,class (:background "#E6E6E6" :foreground "#2E3436"))))
   `(fringe ((,class (:background "#E6E6E6"))))
   `(mode-line ((,class (:box (:line-width -1 :color "#C6C6C6" :style nil)
			      :background "#E6E6E6" :foreground "#2E3436"))))
   `(mode-line-inactive ((,class (:background "#E6E6E6" :foreground "#C6C6C6"))))
   `(header-line ((,class (:foreground "black" :background "#E6E6E6"))))

   `(minibuffer-prompt ((,class (:foreground "#0084C8" :bold t))))
   `(region ((,class (:foreground unspecified :background "#C2D5E9"))))
   `(dired-header ((,class (:bold t :foreground "#0084C8"))))
   `(widget-button ((,class (:bold t :foreground "#0084C8"))))

   `(success ((,class (:bold t :foreground "#4E9A06"))))
   `(warning ((,class (:foreground "#CE5C00"))))
   `(error ((,class (:foreground "#B50000"))))

   `(font-lock-builtin-face ((,class (:foreground "#A020F0"))))
   `(font-lock-constant-face ((,class (:foreground "#F5666D"))))
   `(font-lock-comment-face ((,class (:foreground "#204A87"))))
   `(font-lock-function-name-face ((,class (:foreground "#00578E" :bold t))))
   `(font-lock-keyword-face ((,class (:bold t :foreground "#A52A2A"))))
   `(font-lock-string-face ((,class (:foreground "#4E9A06"))))
   `(font-lock-type-face ((,class (:foreground "#2F8B58" :bold t))))
   `(font-lock-variable-name-face ((,class (:foreground "#0084C8" :bold t))))
   `(font-lock-warning-face ((,class (:foreground "#F5666D" :bold t))))

   `(link ((,class (:underline t :foreground "#0066CC"))))
   `(link-visited ((,class (:underline t :foreground "#6799CC"))))
   `(highlight ((,class (:foreground "white" :background "#4A90D9"))))
   `(isearch ((,class (:foreground "white" :background "#77A4DD"))))

   `(erc-action-face ((,class (:foreground "#F5666D"))))
   `(erc-button ((,class (:foreground "#A8799C"))))
   `(erc-current-nick-face ((,class (:bold t :foreground "#FF7092"))))
   `(erc-error-face ((,class (:foreground "#F5666D" :bold t))))
   `(erc-input-face ((,class (:foreground "black"))))
   `(erc-keyword-face ((,class (:foreground "#F5666D"))))
   `(erc-my-nick-face ((,class (:bold t :foreground "#FF8CA7"))))
   `(erc-nick-default-face ((,class (:bold t :foreground "#0084C8"))))
   `(erc-notice-face ((,class (:foreground "#0084C8"))))
   `(erc-prompt-face ((,class (:foreground "black"))))
   `(erc-timestamp-face ((,class (:foreground ,"#4CB64A"))))

   `(magit-log-sha1 ((,class (:foreground "#FF7092"))))
   `(magit-log-head-label-local ((,class (:foreground "#4F78B5"))))
   `(magit-log-head-label-remote ((,class (:foreground ,"#4CB64A"))))
   `(magit-branch ((,class (:bold t :foreground "#0084C8"))))
   `(magit-section-title ((,class (:bold t :foreground "#00578E"))))
   `(magit-item-highlight ((,class (:background "#FEFFBF"))))
   `(magit-diff-add ((,class (:bold t :foreground "#4CB64A"))))
   `(magit-diff-del ((,class (:bold nil :foreground "#F5666D"))))

   `(gnus-group-mail-1-empty ((,class (:foreground "#00578E"))))
   `(gnus-group-mail-1 ((,class (:bold t :foreground "#4F78B5"))))
   `(gnus-group-mail-3-empty ((,class (:foreground "#00578E"))))
   `(gnus-group-mail-3 ((,class (:bold t :foreground "#9CBB43"))))
   `(gnus-group-news-3-empty ((,class (:foreground "#00578E"))))
   `(gnus-group-news-3 ((,class (:bold t :foreground "#9CBB43"))))
   `(gnus-header-name ((,class (:bold t :foreground "#0084C8"))))
   `(gnus-header-subject ((,class (:bold t :foreground "#FF7092"))))
   `(gnus-header-content ((,class (:foreground "#FF7092"))))
   `(gnus-button ((,class (:bold t :foreground "#00578E"))))
   `(gnus-cite-1 ((,class (:foreground "#00578E"))))
   `(gnus-cite-2 ((,class (:foreground "#0084C8"))))

   `(diff-added ((,class (:bold t :foreground "#4E9A06"))))
   `(diff-removed ((,class (:bold t :foreground "#F5666D"))))))

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; mediterranean-theme.el ends here
