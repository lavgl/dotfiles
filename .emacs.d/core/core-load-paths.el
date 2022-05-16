(defun add-to-load-path (dir)
  (add-to-list 'load-path dir))

(defconst core-directory (expand-file-name (concat user-emacs-directory "core/")))
(defconst langs-directory (expand-file-name (concat user-emacs-directory "langs/")))

(mapc 'add-to-load-path `(,core-directory ,langs-directory))
					      
