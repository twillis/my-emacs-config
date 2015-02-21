(setq html-config-packages '(
			     emmet-mode
			     haml-mode
			     flymake-haml
			     smartparens))
(ensure-packages html-config-packages)

(add-to-list 'auto-mode-alist '("\\.html$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.jinja2$" . html-mode))

(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'xml-mode-hook 'emmet-mode)
(add-hook 'nxml-mode-hook 'emmet-mode)
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'haml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)


(add-hook 'haml-mode-hook (lambda () (setq emmet-indentation haml-indent-offset))) ;;
