
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/plugins/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")


;;http://ourcomments.org/Emacs/nXhtml/doc/nxhtml.html
(load "~/.emacs.d/plugins/nxhtml/autostart.el")

;;https://github.com/smihica/emmet-mode
(require 'emmet-mode)
(add-hook 'nxhtml-mode-hook 'emmet-mode)
;;(add-hook 'css-mode-hook  'emmet-mode)


;;http://www.emacswiki.org/emacs/Js2Mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;;https://github.com/illusori/emacs-flymake-cursor
(eval-after-load 'flymake '(require 'flymake-cursor))
;;http://www.emacswiki.org/emacs/FlymakeJavaScript
(require 'flymake-jslint)
    (add-hook 'js2-mode-hook 'flymake-jslint-load)


;;https://github.com/emacs-helm/helm
(add-to-list 'load-path "~/.emacs.d/plugins/helm/")
(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "<f6>") 'helm-find-files)
(global-set-key (kbd "<f5>") 'helm-mini)



(setq frame-title-format '("Emacs @ " system-name ": %b %+%+ %f"))
(setq-default tab-width 2)
(global-linum-mode t)
(global-font-lock-mode t)
(show-paren-mode 1)
(define-key global-map (kbd "RET") 'newline-and-indent)

;;http://www.emacswiki.org/emacs/whitespace.el
(require 'whitespace)
(global-whitespace-mode t)
(setq-default indent-tabs-mode nil)


;;http://cx4a.org/software/auto-complete/
(add-to-list 'load-path "/home/alex/.emacs.d/plugins/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/home/alex/.emacs.d/plugins/auto-complete/ac-dict")
(setq-default ac-sources (add-to-list 'ac-sources 'ac-source-dictionary))
(global-auto-complete-mode t)
; Start auto-completion after 2 characters of a word
(setq ac-auto-start 2)
; case sensitivity is important when finding matches
(setq ac-ignore-case nil)

;;https://github.com/capitaomorte/autopair
(require 'autopair)
(autopair-global-mode)

;;https://code.google.com/p/yasnippet/
;;(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
;;(require 'yasnippet)
;;(yas/global-mode t)
;;(setq ac-source-yasnippet nil)


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
