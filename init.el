;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;emacs files 2010 - Tom Willis <tom.willis@gmail.com>
;;
;;this config gets kind of hairy, attempting to clean it up some to
;;make it more manageable
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; start server if not running
;; http://stackoverflow.com/questions/5570451/how-to-start-emacs-server-only-if-it-is-not-started
(load "server")
(unless (server-running-p) (server-start))

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

;; osx specific stuff
(when (memq window-system '(mac ns)) 
  (load-file (concat emacs-config-dir "/osx.el")))

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
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector (vector "#4d4d4c" "#c82829" "#718c00" "#eab700" "#4271ae" "#8959a8" "#3e999f" "#ffffff"))
 '(column-number-mode t)
 '(custom-enabled-themes (quote (sanityinc-tomorrow-bright)))
 '(custom-safe-themes (quote ("1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default)))
 '(ecb-activation-selects-ecb-frame-if-already-active t)
 '(ecb-options-version "2.40")
 '(ecb-tip-of-the-day nil)
 '(fci-rule-color "#efefef")
 '(jabber-roster-line-format "%c %-25n %u %-8s  %S")
 '(js2-highlight-level 3)
 '(js2-mode-escape-quotes nil)
 '(magit-diff-options nil)
 '(org-agenda-files (quote ("~/.org/topgun.org" "~/.org/work.org" "~/.org/javascript.org" "~/.org/personal.org" "~/.org/org.org")))
 '(org-enforce-todo-dependencies t)
 '(semantic-new-buffer-setup-functions (quote ((c-mode . semantic-default-c-setup) (c++-mode . semantic-default-c-setup) (html-mode . semantic-default-html-setup) (java-mode . wisent-java-default-setup) (js-mode . wisent-javascript-setup-parser) (python-mode . wisent-python-default-setup) (scheme-mode . semantic-default-scheme-setup) (srecode-template-mode . srecode-template-setup-parser) (makefile-automake-mode . semantic-default-make-setup) (makefile-gmake-mode . semantic-default-make-setup) (makefile-makepp-mode . semantic-default-make-setup) (makefile-bsdmake-mode . semantic-default-make-setup) (makefile-imake-mode . semantic-default-make-setup) (makefile-mode . semantic-default-make-setup) (js2-mode . wisent-javascript-setup-parser))))
 '(show-paren-mode t)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map (quote ((20 . "#c82829") (40 . "#f5871f") (60 . "#eab700") (80 . "#718c00") (100 . "#3e999f") (120 . "#4271ae") (140 . "#8959a8") (160 . "#c82829") (180 . "#f5871f") (200 . "#eab700") (220 . "#718c00") (240 . "#3e999f") (260 . "#4271ae") (280 . "#8959a8") (300 . "#c82829") (320 . "#f5871f") (340 . "#eab700") (360 . "#718c00"))))
 '(vc-annotate-very-old-color nil)
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
 '(flymake-infoline ((((class color)) (:underline "dark gray"))) t)
 '(flymake-warnline ((((class color)) (:underline "yellow"))))
 '(hl-line ((t (:background "gray7"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "orange"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "green"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "blue"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "dark violet"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "indian red"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "coral"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "goldenrod"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "olive drab")))))
