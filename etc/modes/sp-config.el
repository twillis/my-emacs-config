(ensure-packages '(smartparens))
(smartparens-global-mode t)
(require 'smartparens-config)
;; (sp-use-paredit-bindings)
(sp-use-smartparens-bindings)
(define-key sp-keymap (kbd "M-<backspace>") 'sp-backward-kill-sexp)
;; (define-key sp-keymap (kbd "C-A") 'sp-beginning-of-sexp)
;; (define-key sp-keymap (kbd "C-E") 'sp-end-of-sexp)
(sp-local-tag '(sgml-mode html-mode nxml-mode) "<" "<_>" "</_>" :transform 'sp-match-sgml-tags)
