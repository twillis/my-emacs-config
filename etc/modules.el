;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; modules.el - basically identify what we want required globally, we
;; can assume that the path are set to load-path elsewhere convention
;; should be: (require 'module) followed by any setup, if the setup
;; get's to be too much, throw it in a file lib/*-config.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(dolist (module '(
		  "org-config.el"
		  "remember-config.el"
		  "flymake-config.el"
		  "python-config.el"
		  "js-config.el"
		  "erc-config.el"
		  "nyan-config.el"
		  "my-auto-complete-config.el"
		  "rainbow-config.el"
		  "expand-region-config.el"
		  "multiple-cursors-config.el"
		  "tom.el"
		  "org-present-config.el"
		  "rainbow-delimiters-config.el"
		  "clojure-config.el"
		  "js-config.el"
		  "html-config.el"
		  "css-config.el"
		  "ruby-config.el"
		  "sp-config.el"
		  "visual-regexp-config.el"
		  "compilemode-config.el"
		  "my-helm-config.el"
		  "swoop-config.el"
		  "my-company-config.el"
		  ;; "nlinum-config.el"
		  ;; "haskell-config.el"
		  ;; "god-mode-config.el"
		  "magit-config.el"
		  ;; "my-elixir-config.el"
		  ;; "cl-config.el"
		  ;; "flyspell-config.el"
		  "yasnippet-config.el"
		  ))
  (load-file (concat emacs-config-modules-dir "/" module)))
