;; you need to set variables before calling this
(setq tw-test-flags "")
(setq tw-test-project-dir "")
(setq tw-test-runner "")

(defun tw-run-test()
  "this is handy for when you are looking at a unit test file,
this function will launch py.test with your flags and run the
tests contained within the file you are looking at"
  (interactive)
  (progn 
    (setq test-file buffer-file-name)
    (setq compile-command (format "cd %s ; %s %s %s" tw-test-project-dir tw-test-runner test-file tw-test-flags))
    (compile compile-command)))


(defun tw-debug-test()
  "run file for current buffer in pdb"
  (interactive)
  (progn
    (setq test-file buffer-file-name)
    (pdb (format "pdb %s %s %s -s" tw-test-runner test-file tw-test-flags))))

(global-set-key (kbd "<f12>") 'tw-run-test)
(global-set-key (kbd "<f11>") 'tw-debug-test)



;; really cool snippet should do more of these...
;; http://stackoverflow.com/questions/435847/emacs-mode-to-edit-json
(defun tw-beautify-json ()
  (interactive)
  (let ((b (if mark-active 
	       (min (point) (mark)) 
	     (point-min)))
        (e (if mark-active 
	       (max (point) (mark)) 
	     (point-max))))
    (shell-command-on-region b e
     "python -mjson.tool" (current-buffer) t)))


;; run preferences.el if exists
(if (file-exists-p "preferences.el")
    (load-file "preferences.el"))
