(setq html-config-packages '(
			     emmet-mode
			     web-mode
			     haml-mode
			     flymake-haml))
(ensure-packages html-config-packages)

(add-to-list 'auto-mode-alist '("\\.html$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jinja2$" . web-mode))

(setq web-mode-engines-alist
      '(("ctemplate"    . "\\.html\\'")))

(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'xml-mode-hook 'emmet-mode)
(add-hook 'nxml-mode-hook 'emmet-mode)
