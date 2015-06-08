(setq elixir-config-packages '(elixir-mix
			       alchemist
			       elixir-mode
			       elixir-yasnippets
			       flymake-elixir))


(ensure-packages elixir-config-packages)

(require 'elixir-mix)
(global-elixir-mix-mode)
