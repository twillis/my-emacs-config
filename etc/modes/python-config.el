;; flymake-python config
;; http://github.com/akaihola/flymake-python
(setq python-packages '(jedi flymake-python-pyflakes))
(ensure-packages python-packages)

;; (setq python-flymake-dir (concat emacs-lib-dir "/" "flymake-python"))
;; (add-to-list 'load-path python-flymake-dir)
;; (setq pyflymake (concat python-flymake-dir "/" "pyflymake.py"))
;; (setq python-make pyflymake)
;; (when (load "flymake" t)
;;   (defun flymake-pylint-init ()
;;     (let* ((temp-file (flymake-init-create-temp-buffer-copy
;;                        'flymake-create-temp-inplace))
;;            (local-file (file-relative-name temp-file
;; 					   (file-name-directory 
;; 					    buffer-file-name))))
;;       (list pyflymake (list local-file)))))
;; (add-to-list 'flymake-allowed-file-name-masks
;; 	     '("\\.py\\'" flymake-pylint-init))
;; (add-hook 'find-file-hook 'flymake-find-file-hook)

;; ;; (autoload 'auto-complete "python-mode" t)
;; ;; (autoload 'auto-complete-config "python-mode" t)
;; (autoload 'flymake "python-mode" t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Python mode customizations
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-hook 'python-mode-hook
	  (lambda ()
	    (set-variable 'py-indent-offset 4)
	    (set-variable 'indent-tabs-mode nil)
	    ;; (jedi:setup)
	    ;; (setq jedi:setup-keys t)
	    ))
	    ;; (define-key py-mode-map (kbd "RET") 'newline-and-indent))) # not working in 24


;; flymake config
;; Usage:

;;   (require 'flymake-python-pyflakes)
;;   (add-hook 'python-mode-hook 'flymake-python-pyflakes-load)

;; To use "flake8" instead of "pyflakes", add this line:

;;   (setq flymake-python-pyflakes-executable "flake8")

;; You can pass extra arguments to the checker program by customizing
;; the variable `flymake-python-pyflakes-extra-arguments', or setting it
;; directly, e.g.

;;   (setq flymake-python-pyflakes-extra-arguments '("--ignore=W806"))

;; Uses flymake-easy, from https://github.com/purcell/flymake-easy


(require 'flymake-python-pyflakes)
(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)
