;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; defaults.el - stuff I want no matter what I'm doing
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; disable scroll bar, tool bar and menu bar to maximize real estate
;; for editing.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(set-default-font "Source Code Pro-9")

;; automatic integration with clipboard
(setq x-select-enable-clipboard t)

;;strip down gui
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; turn off startup screen it's for weenies
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq inhibit-startup-screen t)

;;show column number in status
(setq column-number-mode t)

;;paren matching minor mode
(show-paren-mode)

;; default window size
;; (add-to-list 'default-frame-alist '(left . 0))
;; (add-to-list 'default-frame-alist '(top . 0))
;; (add-to-list 'default-frame-alist '(height . 800))
;; (add-to-list 'default-frame-alist '(width . 1300))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; turn on line numbers globally
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
(line-number-mode 1)
;; (global-linum-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; turn on autofill globally
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;turn off annoying beep
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq visible-bell t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; for handling control sequences in terminal changing to colors
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;;default terminal colors
(setq term-default-bg-color "#000000")
(setq term-default-fg-color "#dddd00")

;; associate various file types with modes
(add-to-list 'auto-mode-alist '("\\.pt\\'" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . nxml-mode))


;; like ibuffer
(defalias 'list-buffers 'ibuffer)

;; tell programs the term is perfectly fine
(setenv "TERM" "xterm")



;; delete selection when typing like you would expect
(delete-selection-mode 1)

;; packages
;; (add-to-list 'package-archives
;;              '("melpa" . "http://melpa.milkbox.net/packages/") t)



;;flymake faces
(custom-set-faces
 '(flymake-errline ((((class color)) (:underline "red" :weight bold))))
 '(flymake-warnline ((((class color)) (:underline "yellow"))))
 '(flymake-infoline ((((class color)) (:underline "dark gray")))))
