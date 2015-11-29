;; import env vars to help ruby not explode
(setenv "LANG" "en_US.UTF-8")
(setenv "LC_ALL" "en_US.UTF-8")
(setenv "LC_CTYPE" "en_US.UTF-8")


;; so that local cmds get picked up
(setq local (expand-file-name "~/local"))
(setq local-bin (concat local "/bin"))
(setenv "PATH" (concat local-bin ":" (getenv "PATH")))
