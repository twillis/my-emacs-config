;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; modules.el - basically identify what we want required globally, we
;; can assume that the path are set to load-path elsewhere convention
;; should be: (require 'module) followed by any setup, if the setup
;; get's to be too much, throw it in a file lib/*-config.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; dired-jump C-x C-j
(require 'dired-x)

;; cedet (in core now??)
;; (load-file (concat emacs-config-modules-dir "/cedet-config.el"))


;; ecb mode
;; (load-file (concat emacs-config-modules-dir "/ecb-config.el"))


;; decent terminal inside emacs
;; (require 'multi-term)

;; spotlight for emacs
;; http://www.emacswiki.org/emacs/Anything
(require 'anything-config)

;; interactively do things (IDO)
;; http://www.emacswiki.org/emacs/InteractivelyDoThings
; projectile
(require 'ido)
(ido-mode t)
(require 'idomenu)
(ido-mode 1)
(ido-everywhere 1)
(ido-vertical-mode)
(flx-ido-mode 1)
(projectile-global-mode)

;; color theme
(require 'color-theme)
(color-theme-midnight)
;; (color-theme-dark-laptop)
;; (color-theme-matrix)
;; (color-theme-tty-dark)

;; (require 'imenu)

;; org-mode
;; http://orgmode.org
(load-file (concat emacs-config-modules-dir "/org-config.el"))

;; remember-mode
(load-file (concat emacs-config-modules-dir "/remember-config.el"))

;;flymake config
(load-file (concat emacs-config-modules-dir "/flymake-config.el"))

;;yasnippet configuration
;; (load-file (concat emacs-config-modules-dir "/yasnippet-config.el"))

;;python config
(load-file (concat emacs-config-modules-dir "/python-config-jedi.el"))

;;js config
(load-file (concat emacs-config-modules-dir "/js-config.el"))

;; erc
(load-file (concat emacs-config-modules-dir "/erc-config.el"))

;;nyan-mode
(load-file (concat emacs-config-modules-dir "/nyan-config.el"))

;; auto-complete
(load-file (concat emacs-config-modules-dir "/my-auto-complete-config.el"))

;; rainbow-mode
(load-file (concat emacs-config-modules-dir "/rainbow-config.el"))

;; expand-region-config
(load-file (concat emacs-config-modules-dir "/expand-region-config.el"))

;; zen
(load-file (concat emacs-config-modules-dir "/zen-coding.el"))

;; my shit
(load-file (concat emacs-config-modules-dir "/tom.el"))

;; org-present
(load-file (concat emacs-config-modules-dir "/org-present-config.el"))

;; clojure
(load-file (concat emacs-config-modules-dir "/clojure-config.el"))

;;web-mode
(load-file (concat emacs-config-modules-dir "/web-mode-config.el"))

;rainbow-delimiters
(load-file (concat emacs-config-modules-dir "/rainbow-delimiters-config.el"))
