;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-mode config
;; http://orgmode.org
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'org-install)
(require 'org-mobile)

;; associate *.org with org-mode
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; some key bindings
(define-key global-map "\C-c1" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(setq org-todo-keywords
       '((sequence "TODO" "INPROGRESS" "WAITING" "|" "DONE" "DELEGATED")))

;; record when an item is marked done
(setq org-log-done t)

(setq org-agenda-include-diary t)
(setq org-agenda-include-all-todo t)
(setq org-directory "~/.org")
(setq org-mobile-directory "~/Dropbox/org")
(setq org-mobile-inbox-for-pull (concat org-directory "/from-mobile.org"))

;; babel stuff
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t) (emacs-lisp . t)))


(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/.org/org.org" "Tasks")
	 "* TODO %?\n  %i\n  %a")
	("n" "Note" entry (file+headline "~/.org/org.org" "Notes")
	 "* %?\n  %i\n  %a")))

(setq org-refile-targets '((org-agenda-files . (:level . 2))))
(add-hook 'org-mode-hook
	  (lambda ()
	    (electric-pair-mode)))


;; display in hours not days
(setq org-time-clocksum-format
      '(:hours "%d" :require-hours t :minutes ":%02d" :require-minutes t))
