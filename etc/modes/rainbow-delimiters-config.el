(add-to-list 'load-path (concat emacs-lib-dir "/" "rainbow-delimiters"))
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
