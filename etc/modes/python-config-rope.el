;; thing to make python development productive

;; rope doesn't play well with python's import machinery yet...
(setq rope-dist (concat emacs-lib-dir "/rope-dist/latest"))

(add-to-list 'load-path (concat emacs-lib-dir "/" "auto-complete"))

;; flymake-python config
;; http://github.com/akaihola/flymake-python
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
	    (electric-pair-mode)))
	    ;; (define-key py-mode-map (kbd "RET") 'newline-and-indent))) # not working in 24


;; pymacs
(autoload 'pymacs-apply "pymacs")	
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)


(autoload 'pymacs "pymacs" t)
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)
