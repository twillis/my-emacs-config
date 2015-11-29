;;strip down gui
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;;set size
(when window-system (set-frame-size (selected-frame) 200 56))

(setq use-dialog-box nil)
(setq scroll-step 1 scroll-conservatively 10000)
