(ensure-packages '(visual-regexp-steroids))

(define-key global-map (kbd "C-c r") 'vr/replace)
(define-key global-map (kbd "C-c q") 'vr/query-replace)
(define-key global-map (kbd "C-c m") 'vr/mc-mark)
(define-key esc-map (kbd "C-M-r") 'vr/isearch-backward) ;; C-M-r
(define-key esc-map (kbd "C-M-s") 'vr/isearch-forward) ;; C-M-s
