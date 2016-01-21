(ensure-packages '(clojure-mode
		   cider
		   cider-decompile
		   clj-refactor
		   ;; cljdoc
		   cljsbuild-mode
		   clojure-cheatsheet
		   ;; clojurescript-mode
		   clojure-quick-repls
		   flycheck-clojure
		   flycheck-pos-tip))

(eval-after-load 'flycheck '(flycheck-clojure-setup))
(eval-after-load 'flycheck
  '(setq flycheck-display-errors-function #'flycheck-pos-tip-error-messages))
