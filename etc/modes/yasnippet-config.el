;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; yasnippet 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq yas-lib-dir (mapconcat 'identity (list emacs-lib-dir "yasnippet") "/"))
(setq yas-snippet-dir (mapconcat 'identity (list yas-lib-dir "snippets") "/"))

(add-to-list 'load-path  yas-lib-dir)

(require 'yasnippet) ;; not yasnippet-bundle
(setq yas/trigger-key "\\")
;; (setq yas/extra-mode-hooks '(python-mode-hook django-mode-hook))
(setq yas/extra-mode-hooks '(python-mode-hook))
(setq yas/text-popup-function
  'yas/dropdown-list-popup-for-template)
(yas/load-directory yas-snippet-dir);; this can be slow
(yas-global-mode 1)

;; (add-hook 'org-mode-hook
;;  #'(lambda ()
;;  (setq yas/fallback-behavior
;;  `(apply ,(lookup-key org-mode-map [tab])))
;;  (local-set-key [tab] 'yas/expand)))
;; (add-hook 'org-mode-hook
;;           #'(lambda ()
;;               (local-set-key [tab] 'yas/expand)))
