;;alarm clock functions
(defvar alarm-clock-timer nil
  "Keep timer so that the user can cancel the alarm")

(defun alarm-clock-message (text)
  "The actual alarm action"
  (message-box text))

(defun alarm-clock ()
  "Set an alarm.
The time format is the same accepted by `run-at-time'.  For
example \"11:30am\"."
  (interactive)
  (let ((time (read-string "Time: "))
        (text (read-string "Alarm message: ")))
    (setq alarm-clock-timer (run-at-time time nil 'alarm-clock-message text))))

(defun alarm-clock-cancel ()
  "Cancel the alarm clock"
  (interactive)
  (cancel-timer alarm-clock-timer)) 

(provide 'alarm)