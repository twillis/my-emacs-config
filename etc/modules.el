;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; modules.el - basically identify what we want required globally, we
;; can assume that the path are set to load-path elsewhere convention
;; should be: (require 'module) followed by any setup, if the setup
;; get's to be too much, throw it in a file lib/*-config.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; dired-jump C-x C-j
;; (require 'dired-x)

;; spotlight for emacs
;; http://www.emacswiki.org/emacs/Anything
;; (require 'anything-config)

; projectile
(projectile-global-mode +1)

;; turn on undo tree globally
(global-undo-tree-mode)

;; for imenu-ish stuff
(semantic-mode 1)

;; org-mode
;; http://orgmode.org
(load-file (concat emacs-config-modules-dir "/org-config.el"))

;; remember-mode
(load-file (concat emacs-config-modules-dir "/remember-config.el"))

;;flymake config
(load-file (concat emacs-config-modules-dir "/flymake-config.el"))

;;python config
(load-file (concat emacs-config-modules-dir "/python-config.el"))

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

;; multiple-cursors-config
(load-file (concat emacs-config-modules-dir "/multiple-cursors-config.el"))

;; my shit
(load-file (concat emacs-config-modules-dir "/tom.el"))

;; org-present
(load-file (concat emacs-config-modules-dir "/org-present-config.el"))

;rainbow-delimiters
(load-file (concat emacs-config-modules-dir "/rainbow-delimiters-config.el"))

;; clojure stuff
(load-file (concat emacs-config-modules-dir "/clojure-config.el"))

;; js stuff
(load-file (concat emacs-config-modules-dir "/js-config.el"))

;; html stuff
(load-file (concat emacs-config-modules-dir "/html-config.el"))

;; css stuff
(load-file (concat emacs-config-modules-dir "/css-config.el"))

;; ruby stuff
(load-file (concat emacs-config-modules-dir "/ruby-config.el"))

;; smartparens mode config
(load-file (concat emacs-config-modules-dir "/sp-config.el"))

;; visual-regexp
(load-file (concat emacs-config-modules-dir "/visual-regexp-config.el"))

;; compile
(load-file (concat emacs-config-modules-dir "/compilemode-config.el"))

;; helm
(load-file (concat emacs-config-modules-dir "/my-helm-config.el"))
;; helm-swoop
(load-file (concat emacs-config-modules-dir "/swoop-config.el"))

;; company
(load-file (concat emacs-config-modules-dir "/my-company-config.el"))

;; nlinum 
;; (load-file (concat emacs-config-modules-dir "/nlinum-config.el"))

;; haskell
;; (load-file (concat emacs-config-modules-dir "/haskell-config.el"))

;; god-mode
;;(load-file (concat emacs-config-modules-dir "/god-mode-config.el"))

;; magit config
(load-file (concat emacs-config-modules-dir "/magit-config.el"))

;; elixir
;; (load-file (concat emacs-config-modules-dir "/my-elixir-config.el"))

;; common lisp
;; (load-file (concat emacs-config-modules-dir "/cl-config.el"))

;; flyspell-mode
;; (load-file (concat emacs-config-modules-dir "/flyspell-config.el"))

;; yasnippet
(load-file (concat emacs-config-modules-dir "/yasnippet-config.el"))
