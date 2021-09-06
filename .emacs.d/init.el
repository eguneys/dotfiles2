(load "~/.emacs.d/init-packages")

(add-to-list 'load-path "~/.emacs.d/lisp")
(menu-bar-mode -2)

(require 'whole-line-or-region)

(load "defuns-config.el")
(global-set-key "\C-h" 'backward-delete-char)
(global-set-key "\C-n" 'next-line)
(global-set-key "\C-l" 'previous-line)
(global-set-key "\M-n" '(lambda () (interactive) (next-line 5)))
(global-set-key "\M-l" '(lambda () (interactive) (previous-line 5)))


(global-set-key "\M-h" 'backward-delete-word)

(global-set-key "\M-o" 'other-window)
