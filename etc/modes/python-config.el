;; flymake-python config
;; http://github.com/akaihola/flymake-python
(setq python-packages '(jedi))
(ensure-packages python-packages)

(setq python-flymake-dir (concat emacs-lib-dir "/" "flymake-python"))
(add-to-list 'load-path python-flymake-dir)
(setq pyflymake (concat python-flymake-dir "/" "pyflymake.py"))
(setq python-make pyflymake)
(when (load "flymake" t)
  (defun flymake-pylint-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name temp-file
					   (file-name-directory 
					    buffer-file-name))))
      (list pyflymake (list local-file)))))
(add-to-list 'flymake-allowed-file-name-masks
	     '("\\.py\\'" flymake-pylint-init))
(add-hook 'find-file-hook 'flymake-find-file-hook)

;; (autoload 'auto-complete "python-mode" t)
;; (autoload 'auto-complete-config "python-mode" t)
(autoload 'flymake "python-mode" t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Python mode customizations
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-hook 'python-mode-hook
	  (lambda ()
	    (set-variable 'py-indent-offset 4)
	    (set-variable 'indent-tabs-mode nil)
	    (jedi:setup)
	    (setq jedi:setup-keys t)))
	    ;; (define-key py-mode-map (kbd "RET") 'newline-and-indent))) # not working in 24
