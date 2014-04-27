;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-mode config
;; http://orgmode.org
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq org-config-core '(org-plus-contrib))
(setq org-config-packages '(
                            elnode
			   ))

(ensure-packages org-config-core)
(ensure-packages org-config-packages)

;; (require 'org-install)
;; (require 'org-mobile)

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
 '((python . t) 
   (emacs-lisp . t) 
   ;; (clojure . t)
))

;; need dev version of org-mode for this
;; (require 'ob-clojure)
;; (setq org-babel-clojure-backend 'cider)



;; Let's have pretty source code blocks
(setq org-edit-src-content-indentation 0
      org-src-tab-acts-natively t
      org-src-fontify-natively t
      ;; org-confirm-babel-evaluate nil
)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/.org/org.org" "Tasks")
	 "* TODO %?\n  %i\n  %a" :clock-in t :clock-resume t)
	("n" "Note" entry (file+headline "~/.org/org.org" "Notes")
	 "* %?\n  %i\n  %a" :clock-in t :clock-resume t)))

(setq org-refile-targets '((org-agenda-files . (:level . 1))))

;; display in hours not days
(setq org-time-clocksum-format
      '(:hours "%d" :require-hours t :minutes ":%02d" :require-minutes t))
