(ensure-packages '(
		   haskell-mode
		   ghc
		   shm
		   ))

(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
(add-hook 'inferior-haskell-mode-hook 'turn-on-ghci-completion)

(setenv "PATH" (concat "~/.cabal/bin:" (getenv "PATH")))
(add-to-list 'exec-path "~/.cabal/bin")
(custom-set-variables '(haskell-tags-on-save t))


(custom-set-variables
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t))
(eval-after-load 'haskell-mode '(progn
				  (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
				  (define-key haskell-mode-map (kbd "C-`") 'haskell-interactive-bring)
				  (define-key haskell-mode-map (kbd "C-c C-n C-t") 'haskell-process-do-type)
				  (define-key haskell-mode-map (kbd "C-c C-n C-i") 'haskell-process-do-info)
				  (define-key haskell-mode-map (kbd "C-c C-n C-c") 'haskell-process-cabal-build)
				  (define-key haskell-mode-map (kbd "C-c C-n c") 'haskell-process-cabal)
				  (define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)))
(eval-after-load 'haskell-cabal '(progn
				   (define-key haskell-cabal-mode-map (kbd "C-`") 'haskell-interactive-bring)
				   (define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-ode-clear)
				   (define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
				   (define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)))

;; (custom-set-variables '(haskell-process-type 'cabal-repl))
