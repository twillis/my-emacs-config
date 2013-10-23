;; point to cvs checkout of slime under lib
(add-to-list 'load-path (concat emacs-lib-dir "/slime"))
(require 'slime)
(add-hook 'lisp-mode-hook (lambda () (slime-mode t)))
(add-hook 'inferior-lisp-mode-hook (lambda () (inferior-slime-mode t)))
;; Optionally, specify the lisp program you are using. Default is "lisp"
(setq inferior-lisp-program "clisp") 
