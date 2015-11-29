;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; emacs initialization file init.el ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; run server if not running
(load-file (concat emacs-config-dir "/my-server-config.el"))

;; strip down gui
(load-file (concat emacs-config-dir "/gui.el"))

;; environment quirks
(load-file (concat emacs-config-dir "/env.el"))

;; initial packages
(load-file (concat emacs-config-dir "/my-package-config.el"))

;; osx specific stuff
(when (memq window-system '(mac ns)) (load-file (concat emacs-config-dir "/osx.el")))

;; should be path where emacs was initiated set it back at the end to
;; insure, not init file hijacked it and dropped the user somewhere
;; they didn't expect to be
(setq init-path (expand-file-name "."))
(setq emacs-config-modules-dir (concat emacs-config-dir "/modes"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; run defaults.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load-file (concat emacs-config-dir "/defaults.el"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; run modules.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load-file (concat emacs-config-dir "/modules.el"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; run keys.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load-file (concat emacs-config-dir "/keys.el"))

;;finally....
(cd init-path)
