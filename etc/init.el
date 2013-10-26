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
	auto-complete
	anything
	auto-highlight-symbol
	color-theme
	flx
	fuzzy
	helm
	helm-project
	ido-vertical-mode
	idomenu
	magit
	nyan-mode
	org-mode
	projectile
	rainbow-delimiters
	rainbow-mode
	undo-tree
	expand-region
        iedit
        ace-jump-mode
	))

(el-get 'sync my:el-get-packages)
(el-get 'sync)

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


;; nxhtml-mode warnings workaround
(when (string< "24.1" (format "%d.%d" emacs-major-version emacs-minor-version))
(eval-after-load "mumamo"
'(setq mumamo-per-buffer-local-vars
(delq 'buffer-file-name mumamo-per-buffer-local-vars))))
