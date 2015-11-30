(ensure-packages '(
		   emmet-mode
		   haml-mode
		   flymake-haml
		   smartparens))

(add-to-list 'auto-mode-alist '("\\.html$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.jinja2$" . html-mode))

(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'xml-mode-hook 'emmet-mode)
(add-hook 'nxml-mode-hook 'emmet-mode)
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'haml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)


(add-hook 'haml-mode-hook (lambda () (setq emmet-indentation haml-indent-offset))) ;;

;; nxhtml-mode warnings workaround
(when (string< "24.1" (format "%d.%d" emacs-major-version emacs-minor-version))
  (eval-after-load "mumamo"
    '(setq mumamo-per-buffer-local-vars
	   (delq 'buffer-file-name mumamo-per-buffer-local-vars))))
