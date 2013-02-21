(add-to-list 'load-path "~/.emacs.d/plugins")
(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/.emacs.d/emacs-color-theme-solarized")

(require 'dirtree)
(require 'websearch)
(require 'color-theme-solarized)

(color-theme-solarized-dark)
(set-face-attribute 'default nil :height 130)
(require `tramp)
(load-file "~/.emacs.d/emacs-for-python/epy-init.el")
(load-file "~/.emacs.d/emacs-for-python/epy-pylint.el")
(load-file "~/.emacs.d/emacs-for-python/epy-flake8.el")
(global-set-key (kbd "C-x d") 'dirtree)
(put 'upcase-region 'disabled nil)

(defun thj-reload-solarized (frame)
  (select-frame frame)
  (color-theme-solarized-dark))

(defun thj-reload-solarized-on-delete (&optional frame)
    (color-theme-solarized-dark))

(add-hook 'delete-frame-functions 'thj-reload-solarized-on-delete)
(add-hook 'server-done-hook 'thj-reload-solarized-on-delete)
(add-hook 'after-make-frame-functions 'thj-reload-solarized)
