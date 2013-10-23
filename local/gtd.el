;; gtd mind-sweep workflow
(require 'alarm)

;;some default variables
(setq org-root-dir (expand-file-name "~/.org"))
(setq org-default-notes-file (mapconcat 'identity (list
						   org-root-dir "notes.org") "/"))
(setq org-default-projects-file (mapconcat 'identity (list
						      org-root-dir "projects.org") "/"))
(setq org-default-todo-file (mapconcat 'identity (list
						  org-root-dir "tasks.org") "/"))

(defun gtd-journal() (interactive)(find-file org-default-notes-file))
(defun gtd-todo() (interactive)(find-file org-default-todo-file))
(defun gtd-projects() (interactive)(find-file org-default-projects-file))
(defun gtd-expenses() (interactive)(find-file org-default-expenses-file))

(defun gtd-mind-sweep() (interactive)
  "spend 30 minutes doing a brain dump, you will be prompted when
your time is up."
  (run-at-time "30 min" nil 'alarm-clock-message "Finish sweeping
  your mind and get back to work." )
  (gtd-todo))

(provide 'gtd)