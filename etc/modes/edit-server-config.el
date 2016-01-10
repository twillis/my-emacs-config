(ensure-packages '(edit-server))

(require 'edit-server)

(defun bb-focus-chrome ()
(interactive)
(ns-do-applescript "tell application \"Google Chrome\"
activate
end tell"))

(add-hook 'edit-server-done-hook 'bb-focus-chrome)

(defun bb-focus-emacs ()
(interactive)
(ns-do-applescript "tell application \"Emacs\"
activate
end tell"))

(add-hook 'edit-server-start-hook 'bb-focus-emacs)


(edit-server-start)
