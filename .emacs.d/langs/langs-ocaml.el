(defun config/init-ocaml ()
  (use-package tuareg :defer t)
  (use-package ocp-indent
    :custom (ocp-indent-path (concat (avg/opam-bin-path) "ocp-indent"))
    :hook ((tuareg-mode caml-mode) . ocp-indent-caml-mode-setup))

  (use-package merlin
    :ensure t
    :custom (merlin-command (lambda ()
                              (concat (avg/opam-bin-path) "ocamlmerlin")))
    :hook ((tuareg-mode caml-mode) . merlin-mode))

  (use-package merlin-company
    :ensure t
    :after merlin)

  (use-package merlin-eldoc
    :ensure t
    :after merlin))


(defun avg/opam-bin-path ()
  (expand-file-name "~/.opam/default/bin/"))


(provide 'langs-ocaml)
