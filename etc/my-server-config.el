;; start server if not running
;; http://stackoverflow.com/questions/5570451/how-to-start-emacs-server-only-if-it-is-not-started
(load "server")
(unless (server-running-p)
  (server-start))
