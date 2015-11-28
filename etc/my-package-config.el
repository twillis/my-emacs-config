(require 'package)

(package-initialize)
;; packages
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(unless package-archive-contents
  (package-refresh-contents))

(defun ensure-packages (packages)
  (dolist (package packages)
    (unless (package-installed-p package)
      (package-install package))))

(setq core-packages
      '(
	auto-complete
	anything
	ag
        color-theme-approximate
	cyberpunk-theme
	base16-theme
	fuzzy
	helm
	helm-projectile
	helm-ack
	helm-ag
	magit
	;; magit-gh-pulls
	nyan-mode
	projectile
	;; ack-and-a-half
	rainbow-delimiters
	rainbow-mode
	undo-tree
	expand-region
        multiple-cursors
        ace-jump-mode
	ace-window
	smartparens
	iedit
	ws-butler
	))

(ensure-packages core-packages)
