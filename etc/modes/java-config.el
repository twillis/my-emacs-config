;; Setting up all things for java, it won't be as good as eclipse
;; but who cares

(setq cedet-home (concat emacs-lib-dir "/" "cedet-1.0"))
(setq ecb-home (concat emacs-lib-dir "/" "ecb-2.40"))
(add-to-list 'load-path (concat cedet-home "/" "common"))
(add-to-list 'load-path (concat ecb-home))

;; jde mode
(setq jdee-home (concat emacs-lib-dir "/" "jdee-2.4.0.1"))
(add-to-list 'load-path (concat jdee-home "/lisp"))
(load-file (concat cedet-home "/common/" "cedet.el"))
;;(load-file (concat ecb-home "/" "ecb.el"))
(autoload 'ecb "ecb" t)
(autoload 'jde "jde" t)

;;malabar-mode can't get it to work
;; (require 'cedet)
;; (semantic-load-enable-minimum-features) ;; or enable more if you wish
;; (setq malabar-home (concat emacs-lib-dir "/" "malabar-1.0"))
;; (add-to-list 'load-path (concat malabar-home "/lisp"))
;; (require 'malabar-mode)
;; (setq malabar-groovy-lib-dir (concat malabar-home "/lib"))
;; (add-to-list 'auto-mode-alist '("\\.java\\'" . malabar-mode))