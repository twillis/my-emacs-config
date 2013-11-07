(setq osx-packages '(exec-path-from-shell))
(ensure-packages osx-packages)
(exec-path-from-shell-initialize)


(defun toggle-fullscreen ()
  "Toggle full screen"
  (interactive)
  (set-frame-parameter
     nil 'fullscreen
     (when (not (frame-parameter nil 'fullscreen)) 'fullboth)))

(global-set-key (kbd "C-<f12>") 'toggle-fullscreen)
