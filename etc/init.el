;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; emacs initialization file init.el ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(setq my:el-get-packages 
      '(
	anything
	auto-complete
	auto-complete-css
	auto-complete-emacs-lisp
	auto-complete-rst
	auto-complete-ruby
	auto-highlight-symbol
	clojure-mode
	coffee-mode
	color-theme
	flx
	flymake-coffee
	flymake-css
	flymake-cursor
	flymake-easy
	flymake-haml
	flymake-html-validator
	flymake-ruby
	flymake-sass
	flymake-shell
	fuzzy
	helm
	helm-project
	ido-vertical-mode
	idomenu
	jedi
	js2-mode
	js3-mode
	json
	magit
	mustache
	nrepl
	nyan-mode
	org-mode
	projectile
	rainbow-delimiters
	rainbow-mode
	undo-tree
	web-mode
	zencoding-mode
	))

(el-get 'sync my:el-get-packages)

;; defer fontification while scrolling
(setq jit-lock-defer-time 0.05)

;; should be path where emacs was initiated set it back at the end to
;; insure, not init file hijacked it and dropped the user somewhere
;; they didn't expect to be
(setq init-path (expand-file-name "."))

;; just in case one of these hijacks the path of the editor starts in
;; we'll save it for resetting at the end
(setq local (expand-file-name "~/local"))
(setq local-bin (concat local "/bin"))
(setenv "PATH" (concat local-bin ":" (getenv "PATH"))) 

(setq emacs-config-modules-dir 
      (concat emacs-config-dir "/modes"))

(add-to-list 'load-path emacs-config-modules-dir)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; run defaults.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load-file (concat emacs-config-dir "/defaults.el"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; run modules.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load-file (concat emacs-config-dir "/modules.el"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; run keys.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load-file (concat emacs-config-dir "/keys.el"))

;;finally....
(cd init-path)
