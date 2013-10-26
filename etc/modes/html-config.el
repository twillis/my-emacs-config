(setq html-config-packages '(
			     zencoding-mode
			     web-mode))
(ensure-packages html-config-packages)

(add-to-list 'auto-mode-alist '("\\.html$" . web-mode))

(add-hook 'web-mode-hook 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)
(add-hook 'xml-mode-hook 'zencoding-mode)
(add-hook 'nxml-mode-hook 'zencoding-mode)
