(ensure-packages '(js2-mode
		   ac-js2
		   js2-refactor
		   json-mode
		   coffee-mode
		   js-comint
		   handlebars-mode
		   flycheck))

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(autoload 'json-mode "json-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.json$" . json-mode))

(defun my-disable-indent-tabs-mode ()
  (set-variable 'indent-tabs-mode nil))

(add-hook 'js2-mode-hook 'my-disable-indent-tabs-mode)
(add-hook 'json-mode-hook 'my-disable-indent-tabs-mode)
(add-hook 'js2-mode-hook 'flycheck-mode)
(add-hook 'js-mode-hook 'flycheck-mode)

(setq flycheck-eslintrc "~/.eslintrc")
(setq flycheck-jshintrc "~/.jshintrc")
(setq flycheck-jscsrc "~/.jscsrc")

(require 'flycheck)
(flycheck-add-next-checker 'javascript-jshint '(error . javascript-jscs))
(flycheck-add-next-checker 'javascript-jscs '(error . javascript-eslint))
(flycheck-add-mode 'javascript-jshint 'js2-mode)

(setq coffee-tab-width 2)
