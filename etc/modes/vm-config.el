;; vm config file taken straight from INSTALL

(setq vm-dist (concat emacs-lib-dir "/vm"))

(add-to-list 'load-path
	     (concat vm-dist "/lisp"))
(add-to-list 'Info-default-directory-list
	     (concat vm-dist "/info"))

(require 'vm-autoloads)
