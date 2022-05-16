(require 'langs-elixir)
(require 'langs-zig)
(require 'langs-ocaml)


(defun config/init-langs ()
  (config/init-elixir)
  (config/init-zig)
  (config/init-ocaml))


(provide 'langs)
