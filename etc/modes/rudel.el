

(defun load-rudel ()
  (interactive)
  ;; (add-to-list 'load-path "~/src/cedet/eieio")
  ;; (add-to-list 'load-path "~/src/cedet/common")
  (load-file (concat emacs-lib-dir "/rudel/rudel-loaddefs.el"))
  (add-to-list 'load-path (concat emacs-lib-dir "/rudel"))
  (add-to-list 'load-path (concat emacs-lib-dir "/rudel/jupiter"))
  (add-to-list 'load-path (concat emacs-lib-dir "/rudel/obby"))
  (require 'rudel-mode)
  (require 'rudel-obby)
  (global-rudel-minor-mode))
