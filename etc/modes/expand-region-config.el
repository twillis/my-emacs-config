;; expand-region
;; (add-hook 'nxml-mode-hook 'er/add-html-mode-expansions)
(ensure-packages '(expand-region))

(require 'expand-region)

(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-M-=") 'er/contract-region)
