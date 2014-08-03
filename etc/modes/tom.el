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


(global-set-key (kbd "C-|") 'ace-window)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x v b") 'magit-blame-mode)



;; hippie-expand from wiki
(setq dcsh-command-list '("all_registers"
			  "check_design" "check_test" "compile" "current_design"
			  "link" "uniquify"
			  "report_timing" "report_clocks" "report_constraint"
			  "get_unix_variable" "set_unix_variable"
			  "set_max_fanout"
			  "report_area" "all_clocks" "all_inputs" "all_outputs"))

(defun he-dcsh-command-beg ()
  (let ((p))
    (save-excursion
      (backward-word 1)
      (setq p (point)))
    p))

(defun try-expand-dcsh-command (old)
  (unless old
    (he-init-string (he-dcsh-command-beg) (point))
    (setq he-expand-list (sort
			  (all-completions he-search-string (mapcar 'list dcsh-command-list))
			  'string-lessp)))
  (while (and he-expand-list
              (he-string-member (car he-expand-list) he-tried-table))
    (setq he-expand-list (cdr he-expand-list)))
  (if (null he-expand-list)
      (progn
	(when old (he-reset-string))
	())
    (he-substitute-string (car he-expand-list))
    (setq he-tried-table (cons (car he-expand-list) (cdr he-tried-table)))
    (setq he-expand-list (cdr he-expand-list))
    t))

(global-set-key "\M-/" (make-hippie-expand-function
			'(try-expand-dcsh-command
			  try-expand-dabbrev-visible
			  try-expand-dabbrev
			  try-expand-dabbrev-all-buffers) t))
