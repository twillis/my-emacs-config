(setq ys-packages '(yasnippet))
(ensure-packages ys-packages)

(require 'yasnippet)
(yas-global-mode 1)
(add-hook 'prog-mode-hook #'yas-minor-mode)
