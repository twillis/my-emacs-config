;; just a wild guess what might be needed
(setq ruby-config-packages '(
			     starter-kit-ruby
			     enh-ruby-mode
			     flymake-ruby
			     helm-rails
			     helm-rb
			     helm-rubygems-local
			     robe
			     ruby-dev
			     ruby-electric
			     ruby-interpolation
			     ruby-mode
			     ruby-refactor
			     ruby-test-mode
			     ruby-tools
                             rinari
                             flymake-haml
                             haml-mode
                             yaml-mode
                             flymake-yaml
                             web-mode
			     ))
(ensure-packages ruby-config-packages)

(add-hook 'ruby-mode-hook 'flymake-ruby-load)
(add-hook 'enh-ruby-mode-hook 'flymake-ruby-load)
(add-hook 'haml-mode-hook 'flymake-haml-load)
(add-hook 'yaml-mode-hook 'flymake-yaml-load)

(add-to-list 'auto-mode-alist '("\\.erb$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.rhtml$" . web-mode))
