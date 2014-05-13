;; just a wild guess what might be needed
(setq ruby-config-packages '(
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
                             rspec-mode
                             flymake-haml
                             haml-mode
                             yaml-mode
                             flymake-yaml
                             web-mode
			     projectile-rails
			     ))
(ensure-packages ruby-config-packages)
;; from
;; http://crypt.codemancers.com/posts/2013-09-26-setting-up-emacs-as-development-environment-on-osx/
(add-to-list 'ac-modes 'enh-ruby-mode)
(add-to-list 'ac-modes 'web-mode)


(add-hook 'ruby-mode-hook 'flymake-ruby-load)
(add-hook 'enh-ruby-mode-hook 'flymake-ruby-load)
(add-hook 'haml-mode-hook 'flymake-haml-load)
(add-hook 'yaml-mode-hook 'flymake-yaml-load)

;; something i've installed here breaks web-mode, probbaly rainbow or
;; hilight or something else
(add-to-list 'auto-mode-alist '("\\.erb$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.rhtml$" . web-mode))

(setq rspec-use-rake-when-possible nil)
(setq rspec-use-zeus-when-possible nil)

(add-hook 'projectile-mode-hook 'projectile-rails-on)



(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . enh-ruby-mode))
