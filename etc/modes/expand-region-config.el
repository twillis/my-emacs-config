;; expand-region
(add-to-list 'load-path (concat emacs-lib-dir "/" "expand-region.el"))
;; (add-hook 'nxml-mode-hook 'er/add-html-mode-expansions) 
(require 'expand-region)

(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-+") 'er/contract-region)
