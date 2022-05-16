(defun config/init-ocaml ()
  (use-package tuareg :defer t)
  (use-package ocp-indent
    :custom (ocp-indent-path (expand-file-name "~/.opam/default/bin/ocp-indent"))
    :hook ((tuareg-mode caml-mode) . ocp-indent-caml-mode-setup))

  (use-package merlin
    :ensure t
    :hook ((tuareg-mode caml-mode) . merlin-mode))

  (use-package merlin-company
    :ensure t
    :after merlin)

  (use-package merlin-eldoc
    :ensure t
    :after merlin))

(provide 'langs-ocaml)
