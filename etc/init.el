;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; emacs initialization file init.el ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq package-archives
      '(("gnu"         . "http://elpa.gnu.org/packages/")
        ("original"    . "http://tromey.com/elpa/")
        ("org"         . "http://orgmode.org/elpa/")
        ("marmalade"   . "http://marmalade-repo.org/packages/")
        ("melpa"       . "http://melpa.milkbox.net/packages/")))
(package-initialize)

(setq core-packages
      '(
	auto-complete
	anything
	ag
        color-theme-approximate
	zenburn-theme
	flx
        flx-ido
	fuzzy
	helm
	helm-projectile
	helm-ack
	helm-ag
	ido-vertical-mode
	ido-ubiquitous
	ido-yes-or-no
	ido-at-point
	smex
	idomenu
	magit
	;; magit-gh-pulls
	nyan-mode
	projectile
	ack-and-a-half
	rainbow-delimiters
	rainbow-mode
	undo-tree
	expand-region
        multiple-cursors
        ace-jump-mode
	ace-window
	smartparens
	iedit
	ws-butler
	neotree
	smartparens
	))

(unless package-archive-contents
  (package-refresh-contents))


(defun ensure-packages (packages)
  (dolist (package packages)
    (unless (package-installed-p package)
      (package-install package))))




(ensure-packages core-packages)

(ws-butler-global-mode)

(setq projectile-switch-project-action 'projectile-dired)
;; (setq projectile-switch-project-action 'neotree-projectile-action)
(global-set-key [f8] 'neotree-toggle)
(global-set-key [f5] 'toggle-truncate-lines)

(load-theme 'zenburn t)

;; defer fontification while scrolling

(setq jit-lock-defer-time 0.05)
(setq initial-scratch-message "")
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
