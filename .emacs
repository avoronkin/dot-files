
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/plugins/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(load "~/.emacs.d/plugins/nxhtml/autostart.el")
;; Workaround the annoying warnings:
;;    Warning (mumamo-per-buffer-local-vars):
;;    Already 'permanent-local t: buffer-file-name
(when  (and (>= emacs-major-version 24) (>= emacs-minor-version 2)) 
  (eval-after-load "mumamo"
    '(setq mumamo-per-buffer-local-vars
           (delq 'buffer-file-name mumamo-per-buffer-local-vars))))
           
           
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(add-to-list 'load-path "~/.emacs.d/plugins/helm/")
(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-c h") 'helm-mini)



(setq frame-title-format '("Emacs @ " system-name ": %b %+%+ %f"))
(setq-default tab-width 2)
(global-linum-mode t)
(global-font-lock-mode t)

(require 'whitespace)
(global-whitespace-mode t)
(setq-default indent-tabs-mode nil)

(show-paren-mode 1) 
(add-hook 'lisp-mode-hook '(lambda () 
      (local-set-key (kbd "RET") 'newline-and-indent)))
      
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes (quote ("eb8701083acffcb4ae592fb78f236b3d5f62cdc841e2b83cefbbfdd4126f205c" default)))
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t)
 '(js2-highlight-level 3)
 '(show-paren-mode t)
 '(sr-speedbar-right-side t)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
