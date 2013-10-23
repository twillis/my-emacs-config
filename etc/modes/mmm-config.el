;; mmm mode config
(add-to-list 'load-path (concat emacs-lib-dir "/" "mmm-mode-0.4.8"))

(require 'mmm-auto)
(setq mmm-global-mode 'maybe)

(mmm-add-mode-ext-class 'css-mode "\\.html\\'" 'css-mode-html)
(mmm-add-mode-ext-class 'js2-mode "\\.html\\'" 'js2-mode-html)