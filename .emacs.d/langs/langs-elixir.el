(defun config/init-elixir ()
  (use-package elixir-mode :defer t) 

  ;; TODO: what if use lsp for another language?
  (use-package lsp-mode
    :commands lsp
    :diminish lsp-mode
    :hook
    (elixir-mode . lsp)
    :init
    (setq lsp-headerline-breadcrumb-enable nil) 
    (add-to-list 'exec-path "~/programfiles/elixir-ls")))


(provide 'langs-elixir)
