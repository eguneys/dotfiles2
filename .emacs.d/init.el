(load "~/.emacs.d/init-packages")

(add-to-list 'load-path "~/.emacs.d/lisp")
(menu-bar-mode -2)

(require 'whole-line-or-region)


;; no backup files
;; get rid of backup and autosave files
(defvar user-temporary-file-directory
  (concat temporary-file-directory user-login-name "/"))
(make-directory user-temporary-file-directory t)
(setq backup-by-copying t)
(setq backup-directory-alist
      `(("." . ,user-temporary-file-directory)
	(,tramp-file-name-regexp nil)))
(setq auto-save-list-file-prefix
      (concat user-temporary-file-directory ".auto-saves-"))
(setq auto-save-file-name-transforms
      `((".*" ,user-temporary-file-directory t)))
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)


(setq custom-file "~/.emacs.d/.emacs-custom.el")
(load custom-file)


(load "defuns-config.el")
(global-set-key "\C-h" 'backward-delete-char)
(global-set-key "\C-n" 'next-line)
(global-set-key "\C-l" 'previous-line)
(global-set-key "\M-n" '(lambda () (interactive) (next-line 5)))
(global-set-key "\M-l" '(lambda () (interactive) (previous-line 5)))

(global-set-key "\M-p" 'recenter-top-bottom)

(global-set-key "\M-h" 'backward-delete-word)

(global-set-key "\M-o" 'other-window)


(global-set-key (kbd "C-o") (kbd "C-a C-j TAB C-p TAB C-e"))

(global-set-key (kbd "M-t") (kbd "C-f M-b M-d"))

(add-hook 'after-init-hook (lambda () (load "~/.emacs.d/after-init.el")))

;; keyboard b debuckle
(global-set-key "\M-m" 'backward-word)
(global-set-key "\C-m" 'backward-char) 
 
