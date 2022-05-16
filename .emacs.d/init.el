(package-initialize)

(load-file (concat user-emacs-directory "core/core-load-paths.el"))


(setq use-package-always-ensure t) 
(setq use-package-compute-statistics t) 
(setq use-package-verbose t)


(use-package exec-path-from-shell
  :disabled
  :config
  (setq exec-path-from-shell-arguments
        (remove "-i" exec-path-from-shell-arguments))
  (exec-path-from-shell-initialize))


(require 'core)
(require 'langs)

(config/core-init)
(config/init-langs)


;; NOTE: to be able to exit from minibuffer by one ESC
;; otherwice it requires pressing ESC 3 times
(define-key minibuffer-local-map (kbd "<escape>") #'keyboard-escape-quit)


(use-package general
  :config
  (general-evil-setup t)

  (general-define-key
   :states '(normal visual)
   :prefix "SPC"
   "SPC" 'execute-extended-command
   "ff" 'find-file)) 


(recentf-mode 1)


(use-package vertico
  :init (vertico-mode)
  :custom (vertico-cycle t)
  :bind (:map vertico-map
	      ("C-j" . vertico-next)
	      ("C-k" . vertico-previous)))


(use-package consult
  :config
  (general-define-key
   :states '(normal visual)
   :prefix "SPC"
   "ss" 'consult-line
   "bb" 'consult-buffer
   "/" 'consult-ripgrep)) 


(use-package marginalia
  :init
  (marginalia-mode)
  :bind (:map minibuffer-local-map
	      ("M-A" . marginalia-cycle)))


(use-package orderless
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))


(use-package command-log-mode
  :init
  (setq command-log-mode-is-global t)
  (setq command-log-mode-open-log-turns-on-mode t))  


(use-package projectile
  :diminish
  :init
  (setq projectile-sort-order 'recentf) 
  :config
  (projectile-mode)
  (general-define-key
   :states '(normal visual)
   :prefix "SPC"
   "pf" 'projectile-find-file
   "pp" 'projectile-switch-project)) 


(use-package smartparens
  :hook (prog-mode . turn-on-smartparens-strict-mode)
  :config
  (require 'smartparens-config)) 


(use-package evil-lisp-state
  ;; NOTE: this setup allows, for example, to type `SPC k w w`  to wrap thing twice
  ;; also, for example, `SPC k s s s` will do forward slurp for 3 times.
  ;; otherwise, after `SPC k s` I need to press ESC and repeat the whole sequence `SPC k s` 
  :init
  (setq evil-lisp-state-global t)
  :config
  (general-define-key
   :states '(normal visual)
   :prefix "SPC"
   "ks" 'evil-lisp-state-sp-forward-slurp-sexp
   "kS" 'evil-lisp-state-sp-backward-slurp-sexp
   "kb" 'evil-lisp-state-sp-forward-barf-sexp
   "kB" 'evil-lisp-state-sp-backward-barf-sexp
   "kw" 'evil-lisp-state-wrap
   "kW" 'evil-lisp-state-sp-unwrap-sexp))


(use-package evil-smartparens
  :hook (smartparens-enabled . evil-smartparens-mode)) 


(use-package use-package-chords) 


(use-package vterm
  :commands vterm
  :config
  (add-to-list 'evil-emacs-state-modes 'vterm-mode)
  (add-hook 'vterm-mode-hook 'key-chord-mode)

  :chords ((" 1" . winum-select-window-1)
	   (" 2" . winum-select-window-2)
	   ("  " . execute-extended-command))) 


(use-package eros
  :hook (emacs-lisp-mode . eros-mode)
  :config
  (general-define-key
   :keymaps '(emacs-lisp-mode-map lisp-interaction-mode-map)
   :states '(normal visual)
   :prefix "SPC"
   "mee" 'eros-eval-last-sexp
   "RET" 'eros-eval-defun
   "meb" 'eval-buffer))


(use-package hl-todo
  :config
  (global-hl-todo-mode))


(use-package company
  :ensure t
  :bind (:map company-active-map
	      ("C-j" . company-select-next-or-abort)
	      ("C-k" . company-select-previous-or-abort))
  :hook (after-init . global-company-mode))


(use-package highlight-parentheses
  :init (global-highlight-parentheses-mode))


(use-package paren-face
  :config
  (global-paren-face-mode))


(use-package evil-nerd-commenter
  :config
  (general-define-key
   :states '(normal visual)
   "gc" 'evilnc-comment-operator))


(use-package suggest
  :commands suggest)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("79586dc4eb374231af28bbc36ba0880ed8e270249b07f814b0e6555bdcb71fab" default))
 '(package-selected-packages
   '(hl-todo lisp-extra-font-lock ocp-indent svg-tag-mode paren-face highlight-parentheses utop merlin tuareg caml discover-my-major marginalia orderless suggest evil-lisp-state rainbow-delimiters use-package-chords eros esup elisp-demos elisp-demo helpful doom-modeline consult vertico elisp-format restart-emacs doom-themes undo-fu undoo-tree elixir-mode company company-mode vterm cider clojure-mode-extra-font-locking clojure-mode exec-path-from-shell lsp-mode zig-mode zoom arduino-mode counsel-projectile evil-collection evil-smartparens evil-surround ivy-hydra evil-nerd-commenter golden-ratio projectile drarcula-theme darcula-theme command-log-mode winum which-key counsel ivy evil use-package general avy)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

