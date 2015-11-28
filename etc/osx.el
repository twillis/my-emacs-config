(setq osx-packages '(exec-path-from-shell
		     vkill))
(ensure-packages osx-packages)
(exec-path-from-shell-initialize)


(defun toggle-fullscreen ()
  "Toggle full screen"
  (interactive)
  (set-frame-parameter
     nil 'fullscreen
     (when (not (frame-parameter nil 'fullscreen)) 'fullboth)))

(global-set-key (kbd "C-<f12>") 'toggle-fullscreen)

(autoload 'vkill "vkill" nil t)
(autoload 'list-unix-processes "vkill" nil t)

(defun osx-proced (f &rest args)
  (apply 'vkill args))

(advice-add 'proced :around #'osx-proced)
