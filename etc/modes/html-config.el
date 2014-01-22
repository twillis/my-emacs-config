(setq html-config-packages '(
			     emmet-mode
			     web-mode))
(ensure-packages html-config-packages)

(add-to-list 'auto-mode-alist '("\\.html$" . web-mode))

(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'xml-mode-hook 'emmet-mode)
(add-hook 'nxml-mode-hook 'emmet-mode)
