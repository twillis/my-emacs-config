(setq company-config-packages '(company))
(ensure-packages company-config-packages)
(add-hook 'after-init-hook 'global-company-mode)

(global-set-key (kbd "C-c .") 'company-complete)
