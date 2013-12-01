(smartparens-global-mode t)
(require 'smartparens-config)
(sp-use-smartparens-bindings)
(define-key sp-keymap (kbd "M-<backspace>") 'sp-backward-kill-sexp)
