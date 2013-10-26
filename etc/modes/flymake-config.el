(setq flymake-config-packages '(flymake-cursor))
(ensure-packages flymake-config-packages)

;; gui warnings are annoying
(setq flymake-gui-warnings-enabled nil)
;;shortcut keys for running through errors list
(add-hook 'flymake-mode-hook 
      (lambda () 
        (local-set-key [f5] 'flymake-goto-prev-error)
        (local-set-key [f6] 'flymake-goto-next-error)
        ))

(eval-after-load 'flymake '(require 'flymake-cursor))
