(ensure-packages '(company))
(add-hook 'after-init-hook 'global-company-mode)

(global-set-key (kbd "C-c .") 'company-complete)
