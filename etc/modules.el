;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; modules.el - basically identify what we want required globally, we
;; can assume that the path are set to load-path elsewhere convention
;; should be: (require 'module) followed by any setup, if the setup
;; get's to be too much, throw it in a file lib/*-config.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(dolist (module '(
		  org-config
		  remember-config
		  flymake-config
		  python-config
		  js-config
		  erc-config
		  nyan-config
		  my-auto-complete-config
		  rainbow-config
		  expand-region-config
		  multiple-cursors-config
		  tom
		  org-present-config
		  rainbow-delimiters-config
		  clojure-config
		  js-config
		  html-config
		  css-config
		  ruby-config
		  sp-config
		  visual-regexp-config
		  compilemode-config
		  my-helm-config
		  swoop-config
		  my-company-config
		  ;; nlinum-config
		  ;; haskell-config
		  ;; god-mode-config
		  my-magit-config
		  ;; my-elixir-config
		  cl-config
		  ;; flyspell-config
		  yasnippet-config
		  undo-tree-config
		  ace-config
		  iedit-config
		  undo-tree-config
		  ws-butler-config
		  edit-server-config
		  my-editorconfig-config
		  ))
  (load-file (concat emacs-config-modules-dir "/" (symbol-name module) ".el")))
