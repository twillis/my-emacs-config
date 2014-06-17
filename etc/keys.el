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


;; font-size
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)


(defun text-scale-default () 
  (interactive) 
  (text-scale-adjust 0))

(define-key global-map (kbd "C-c C-0") 'text-scale-default)
