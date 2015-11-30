(ensure-packages '(
		   ace-jump-mode
		   ace-window
		   ))

(global-set-key (kbd "C-|") 'ace-window)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
