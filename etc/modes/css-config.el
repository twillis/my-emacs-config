(setq css-config-packages '(
			     css-mode
			     flymake-css
			     flymake-less
			     flymake-sass
			     helm-css-scss
			     less-css-mode
			     scss-mode
			     show-css
			     sass-mode
			     ))
(ensure-packages css-config-packages)

(add-hook 'scss-mode-hook 'flymake-sass-load)
(add-hook 'sass-mode-hook 'flymake-sass-load)
(add-hook 'less-css-mode 'flymake-less-load)
(add-hook 'css-mode 'flymake-css-load)

(setq css-indent-offset 2)
