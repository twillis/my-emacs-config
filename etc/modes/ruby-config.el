;; just a wild guess what might be needed
(ensure-packages '(
		   helm-rails
		   helm-rb
		   helm-rubygems-local
		   ruby-electric
		   ruby-interpolation
		   ruby-mode
		   ruby-refactor
		   ruby-test-mode
		   ruby-tools
		   rspec-mode
		   haml-mode
		   yaml-mode
		   projectile-rails
		   ))
;; from
;; http://crypt.codemancers.com/posts/2013-09-26-setting-up-emacs-as-development-environment-on-osx/
(add-hook 'after-init-hook 'inf-ruby-switch-setup)

;; something i've installed here breaks web-mode, probbaly rainbow or
;; hilight or something else
(add-to-list 'auto-mode-alist '("\\.erb$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.rhtml$" . html-mode))

(setq rspec-use-rake-when-possible nil)
(setq rspec-use-zeus-when-possible nil)

(add-hook 'projectile-mode-hook 'projectile-rails-on)



(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rabl$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.jbuilder$" . ruby-mode))


(defun inf-ruby-console-padrino (dir)
  "run padrino c in dir"
  (interactive "D")
  (let ((default-directory (file-name-as-directory dir)))
    (run-ruby "bundle exec padrino c" "padrino")))


(eval-after-load 'inf-ruby '(define-key inf-ruby-minor-mode-map (kbd "C-c C-s" ) 'inf-ruby-console-auto)) ;;would rather have this
