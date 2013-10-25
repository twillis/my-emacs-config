;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;emacs files 2010 - Tom Willis <tom.willis@gmail.com>
;;
;;this config gets kind of hairy, attempting to clean it up some to
;;make it more manageable
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;important variables used elsewhere in the scripting
(setq emacs-home-dir (expand-file-name "~/.emacs.d"))
(setq emacs-lib-dir (concat emacs-home-dir "/lib"))
(setq emacs-config-dir (concat emacs-home-dir "/etc"))
(setq emacs-local-dir (concat emacs-home-dir "/local"));;personal lisp
(setq use-dialog-box nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; add paths to load-path
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path emacs-lib-dir)
(add-to-list 'load-path emacs-local-dir)

;;bring it up
(load-file (concat emacs-config-dir "/init.el"))

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(ecb-activation-selects-ecb-frame-if-already-active t)
 '(ecb-options-version "2.40")
 '(ecb-tip-of-the-day nil)
 '(jabber-roster-line-format "%c %-25n %u %-8s  %S")
 '(js2-highlight-level 3)
 '(js2-mode-escape-quotes nil)
 '(magit-diff-options nil)
 '(org-agenda-files (quote ("~/.org/work.org" "~/projects/batterii_backports_proj/traversal.org" "~/.org/javascript.org" "~/.org/personal.org" "~/.org/org.org")))
 '(org-enforce-todo-dependencies t)
 '(semantic-new-buffer-setup-functions (quote ((c-mode . semantic-default-c-setup) (c++-mode . semantic-default-c-setup) (html-mode . semantic-default-html-setup) (java-mode . wisent-java-default-setup) (js-mode . wisent-javascript-setup-parser) (python-mode . wisent-python-default-setup) (scheme-mode . semantic-default-scheme-setup) (srecode-template-mode . srecode-template-setup-parser) (makefile-automake-mode . semantic-default-make-setup) (makefile-gmake-mode . semantic-default-make-setup) (makefile-makepp-mode . semantic-default-make-setup) (makefile-bsdmake-mode . semantic-default-make-setup) (makefile-imake-mode . semantic-default-make-setup) (makefile-mode . semantic-default-make-setup) (js2-mode . wisent-javascript-setup-parser))))
 '(show-paren-mode t)
 '(vm-stunnel-program "/usr/bin/stunnel4"))
 
(put 'narrow-to-region 'disabled nil)
(setq scroll-step           1
         scroll-conservatively 10000)

(defun imenu-progress-message (a &optional c d))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flymake-errline ((((class color)) (:underline "red" :weight bold))))
 '(flymake-infoline ((((class color)) (:underline "dark gray"))))
 '(flymake-warnline ((((class color)) (:underline "yellow"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "orange"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "green"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "blue"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "dark violet"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "indian red"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "coral"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "goldenrod"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "olive drab")))))
