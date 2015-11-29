;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;emacs files 2010 - Tom Willis <tom.willis@gmail.com>
;;
;;this config gets kind of hairy, attempting to clean it up some to
;;make it more manageable
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;important variables used elsewhere in the scripting
(setq emacs-home-dir (expand-file-name "~/.emacs.d"))
(setq emacs-lib-dir (concat emacs-home-dir "/lib"))
(setq emacs-config-dir (concat emacs-home-dir "/etc"))
(setq emacs-local-dir (concat emacs-home-dir "/local"));;personal lisp

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; add paths to load-path
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path emacs-lib-dir)
(add-to-list 'load-path emacs-local-dir)

;;bring it up
(load-file (concat emacs-config-dir "/init.el"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#4d4d4c" "#c82829" "#718c00" "#eab700" "#4271ae" "#8959a8" "#3e999f" "#ffffff"))
 '(ansi-term-color-vector
   [unspecified "#282a2e" "#cc6666" "#b5bd68" "#f0c674" "#81a2be" "#b294bb" "#81a2be" "#e0e0e0"] t)
 '(column-number-mode t)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (cyberpunk)))
 '(custom-safe-themes
   (quote
    ("8fed5e4b89cf69107d524c4b91b4a4c35bcf1b3563d5f306608f0c48f580fdf8" "0c387e27a3dd040b33c6711ff92e13bd952369a788eee97e4e4ea2335ac5528f" "0aac4505da6d5061a732656d202c821fe8cdfd8fbdfca68280a47e66a4970608" "e6b8d70dd247727d95c92917311e3130e15a21103516a9ce26712ebeb1d95d34" "1affe85e8ae2667fb571fc8331e1e12840746dae5c46112d5abb0c3a973f5f5a" "51bea7765ddaee2aac2983fac8099ec7d62dff47b708aa3595ad29899e9e9e44" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "41b6698b5f9ab241ad6c30aea8c9f53d539e23ad4e3963abff4b57c0f8bf6730" "60f04e478dedc16397353fb9f33f0d895ea3dab4f581307fbf0aa2f07e658a40" "9bac44c2b4dfbb723906b8c491ec06801feb57aa60448d047dbfdbd1a8650897" "ae8d0f1f36460f3705b583970188e4fbb145805b7accce0adb41031d99bd2580" "de2c46ed1752b0d0423cde9b6401062b67a6a1300c068d5d7f67725adc6c3afb" "5b6a7f2a00275a5589b14fa23ff1699785d9f7c1722ee9f79ec1b7de92fa0935" "e53cc4144192bb4e4ed10a3fa3e7442cae4c3d231df8822f6c02f1220a0d259a" "8b231ba3e5f61c2bb1bc3a2d84cbd16ea17ca13395653566d4dfbb11feaf8567" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e")))
 '(ecb-activation-selects-ecb-frame-if-already-active t)
 '(ecb-options-version "2.40")
 '(ecb-tip-of-the-day nil)
 '(enh-ruby-program "/Users/twillis/.rbenv/versions/2.1.3/bin/ruby")
 '(fci-rule-color "#efefef")
 '(gc-cons-threshold 80000000)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-tags-on-save t)
 '(helm-ag-insert-at-point (quote symbol))
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(jabber-roster-line-format "%c %-25n %u %-8s  %S")
 '(js-indent-level 2)
 '(js2-highlight-level 3)
 '(js2-mode-escape-quotes nil)
 '(magit-diff-options nil)
 '(magit-use-overlays nil)
 '(org-agenda-files (quote ("~/.org/org.org")))
 '(org-babel-clojure-backend (quote cider))
 '(org-default-notes-file "~/.org/notes.org")
 '(org-directory "~/.org")
 '(org-edit-src-content-indentation 0)
 '(org-enforce-todo-checkbox-dependencies t)
 '(org-enforce-todo-dependencies t)
 '(org-from-is-user-regexp "\\<Tom Willis\\>")
 '(org-latex-default-packages-alist
   (quote
    (("AUTO" "inputenc" t)
     ("T1" "fontenc" t)
     ("" "fixltx2e" nil)
     ("" "graphicx" t)
     ("" "grffile" t)
     ("" "longtable" nil)
     ("" "wrapfig" nil)
     ("" "rotating" nil)
     ("normalem" "ulem" t)
     ("" "amsmath" t)
     ("" "textcomp" t)
     ("" "amssymb" t)
     ("" "capt-of" nil)
     ("colorlinks=true,urlcolor=blue,linkcolor=blue" "hyperref" t)
     ("hyperref,x11names" "xcolor" t)
     ("margin=1in" "geometry" nil))))
 '(org-log-done (quote time))
 '(org-src-tab-acts-natively t)
 '(org-time-clocksum-format
   (quote
    (:hours "%d" :require-hours t :minutes ":%02d" :require-minutes t)))
 '(org-todo-keywords
   (quote
    ((sequence "TODO" "INPROGRESS" "WAITING" "|" "DONE" "DELEGATED"))))
 '(pivotal-api-token "253047406257af17c209f41a11d2b9e3")
 '(projectile-use-git-grep t)
 '(rspec-use-spring-when-possible nil)
 '(semantic-new-buffer-setup-functions
   (quote
    ((c-mode . semantic-default-c-setup)
     (c++-mode . semantic-default-c-setup)
     (html-mode . semantic-default-html-setup)
     (java-mode . wisent-java-default-setup)
     (js-mode . wisent-javascript-setup-parser)
     (python-mode . wisent-python-default-setup)
     (scheme-mode . semantic-default-scheme-setup)
     (srecode-template-mode . srecode-template-setup-parser)
     (makefile-automake-mode . semantic-default-make-setup)
     (makefile-gmake-mode . semantic-default-make-setup)
     (makefile-makepp-mode . semantic-default-make-setup)
     (makefile-bsdmake-mode . semantic-default-make-setup)
     (makefile-imake-mode . semantic-default-make-setup)
     (makefile-mode . semantic-default-make-setup)
     (js2-mode . wisent-javascript-setup-parser))))
 '(show-paren-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(syslog-debug-face
   (quote
    ((t :background unspecified :foreground "#A1EFE4" :weight bold))))
 '(syslog-error-face
   (quote
    ((t :background unspecified :foreground "#F92672" :weight bold))))
 '(syslog-hour-face (quote ((t :background unspecified :foreground "#A6E22E"))))
 '(syslog-info-face
   (quote
    ((t :background unspecified :foreground "#66D9EF" :weight bold))))
 '(syslog-ip-face (quote ((t :background unspecified :foreground "#E6DB74"))))
 '(syslog-su-face (quote ((t :background unspecified :foreground "#FD5FF0"))))
 '(syslog-warn-face
   (quote
    ((t :background unspecified :foreground "#FD971F" :weight bold))))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#c82829")
     (40 . "#f5871f")
     (60 . "#eab700")
     (80 . "#718c00")
     (100 . "#3e999f")
     (120 . "#4271ae")
     (140 . "#8959a8")
     (160 . "#c82829")
     (180 . "#f5871f")
     (200 . "#eab700")
     (220 . "#718c00")
     (240 . "#3e999f")
     (260 . "#4271ae")
     (280 . "#8959a8")
     (300 . "#c82829")
     (320 . "#f5871f")
     (340 . "#eab700")
     (360 . "#718c00"))))
 '(vc-annotate-very-old-color nil)
 '(vm-stunnel-program "/usr/bin/stunnel4")
 '(w3m-command "/usr/local/bin/w3m" t)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83"))))
 
(put 'narrow-to-region 'disabled nil)

(defun imenu-progress-message (a &optional c d))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flymake-errline ((((class color)) (:underline "red" :weight bold))))
 '(flymake-infoline ((((class color)) (:underline "dark gray"))) t)
 '(flymake-warnline ((((class color)) (:underline "yellow"))))
 '(hl-line ((((class color) (min-colors 89)) (:background "#eee8d5"))))
 '(mode-line ((((class color) (min-colors 89)) (:inverse-video unspecified :overline "#eee8d5" :underline "#cccec4" :foreground "#657b83" :background "#eee8d5" :box (:line-width 1 :color "#eee8d5" :style unspecified)))))
 '(mode-line-inactive ((((class color) (min-colors 89)) (:inverse-video unspecified :overline "#eee8d5" :underline "#cccec4" :foreground "#93a1a1" :background "#fdf6e3" :box (:line-width 1 :color "#fdf6e3" :style unspecified)))))
 '(rainbow-delimiters-depth-1-face ((((class color) (min-colors 89)) (:foreground "#2aa198"))))
 '(rainbow-delimiters-depth-2-face ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(rainbow-delimiters-depth-3-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(rainbow-delimiters-depth-4-face ((((class color) (min-colors 89)) (:foreground "#6c71c4"))))
 '(rainbow-delimiters-depth-5-face ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(rainbow-delimiters-depth-6-face ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(rainbow-delimiters-depth-7-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(rainbow-delimiters-depth-8-face ((((class color) (min-colors 89)) (:foreground "#6c71c4"))))
 '(rainbow-delimiters-depth-9-face ((((class color) (min-colors 89)) (:foreground "#859900")))))
