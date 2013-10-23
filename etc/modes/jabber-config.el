(add-to-list 'load-path (concat emacs-lib-dir "/emacs-jabber-0.8.0"))
(require 'jabber-autoloads)

;; accounts
(load-file  "~/.jabber-accounts.el")


;; dont clobber me bro
;; (define-jabber-alert echo "Show a message in the echo area"
;;   (lambda (msg)
;;     (unless (minibuffer-prompt)
;;       (message "%s" msg))))