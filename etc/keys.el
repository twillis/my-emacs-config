;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; my key bindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(global-set-key (kbd "<f7>") 'compile)
(global-set-key "\C-xj" 'idomenu)
(global-set-key "\C-xg" 'magit-status)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)


;;smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


;; iedit
(global-set-key (kbd "C-;") 'iedit-mode)

(provide 'keys)
