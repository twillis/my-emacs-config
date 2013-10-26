;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; my key bindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(global-set-key (kbd "<f7>") 'compile)
(global-set-key "\C-xj" 'idomenu)
(global-set-key "\C-xg" 'magit-status)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

(provide 'keys)
