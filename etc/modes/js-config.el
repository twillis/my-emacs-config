(setq js-config-packages '(
			   js2-mode
			   ac-js2
			   js2-refactor
			   flymake-json
			   json-mode
			   coffee-mode
			   flymake-coffee
                           js-comint
			   ))
(ensure-packages js-config-packages)
(require 'flymake-jslint)

(add-hook 'javascript-mode-hook
          (lambda ()
	    (flymake-mode 1)))

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(autoload 'json-mode "json-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.json$" . json-mode))

(add-hook 'js2-mode-hook 'my-disable-indent-tabs-mode)
(add-hook 'json-mode-hook 'my-disable-indent-tabs-mode)
(add-hook 'coffee-mode-hook 'flymake-coffee-load)

(defun my-disable-indent-tabs-mode ()
  (set-variable 'indent-tabs-mode nil))

(add-hook 'js2-mode-hook
          (lambda ()
	    (flymake-mode 1)))

(eval-after-load "js2-mode"
  '(progn
     (setq js2-missing-semi-one-line-override t)
     ;; (setq-default js2-basic-offset 2) ; 2 spaces for indentation (if you prefer 2 spaces instead of default 4 spaces for tab)

     ;; following is from http://www.emacswiki.org/emacs/Js2Mode
     (add-hook 'js2-post-parse-callbacks 'my-js2-parse-global-vars-decls)
     (defun my-js2-parse-global-vars-decls ()
       (let ((btext (replace-regexp-in-string
                     ": *true" " "
                     (replace-regexp-in-string "[\n\t ]+" " " (buffer-substring-no-properties 1 (buffer-size)) t t))))
         (setq js2-additional-externs
               (split-string
                (if (string-match "/\\* *global *\\(.*?\\) *\\*/" btext) (match-string-no-properties 1 btext) "")
                " *, *" t))))))

(setq coffee-tab-width 2)
