(load-file (concat emacs-lib-dir "/cedet-1.1/common/cedet.el"))
(global-ede-mode 1)                      ; Enable the Project management system
(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
(global-srecode-minor-mode 1)            ; Enable template insertion menu
;; configure cedet globally
