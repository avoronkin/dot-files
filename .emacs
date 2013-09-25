(prefer-coding-system 'utf-8)
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/plugins/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;источник пакетов
(require 'package)
(setq package-archives '(;("ELPA" . "http://tromey.com/elpa/") 
                         ;("gnu" . "http://elpa.gnu.org/packages/")
                         ;("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;(setq url-http-attempt-keepalives nil)
(package-initialize)


(setq make-backup-files nil) ; stop creating those backup~ files
(setq auto-save-default nil) ; stop creating those #autosave# files


;поддержка html
;;http://ourcomments.org/Emacs/nXhtml/doc/nxhtml.html
(load "~/.emacs.d/plugins/nxhtml/autostart.el")

;zen кодинг
;;https://github.com/smihica/emmet-mode
(require 'emmet-mode)
(add-hook 'nxhtml-mode-hook 'emmet-mode)
;;(add-hook 'css-mode-hook  'emmet-mode)

;поддержка javascript
;;http://www.emacswiki.org/emacs/Js2Mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;;https://github.com/illusori/emacs-flymake-cursor
(eval-after-load 'flymake '(require 'flymake-cursor))

;проверка javascripta jslintом
;;http://www.emacswiki.org/emacs/FlymakeJavaScript
(require 'flymake-jslint)
    (add-hook 'js2-mode-hook 'flymake-jslint-load)


(add-hook 'js2-mode-hook
          (lambda ()
            ;; Scan the file for nested code blocks
            (imenu-add-menubar-index)
            ;; Activate the folding mode
            (hs-minor-mode t)))


;;https://github.com/emacs-helm/helm
(add-to-list 'load-path "~/.emacs.d/plugins/helm/")
(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "<f6>") 'helm-find-files)
(global-set-key (kbd "<f5>") 'helm-mini)




(when window-system
  ;заголовок окна
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (blink-cursor-mode -1))


(setq-default tab-width 2)
;показывать номера строк
(global-linum-mode t)

;стандартный копи C, паст V, вырезать X, отмена Z
(cua-mode 1)

;подсветка кода
(global-font-lock-mode t)

;подсветка парных скобок
(show-paren-mode 1)

;автоматический отступ на ретурн
(define-key global-map (kbd "RET") 'newline-and-indent)

;;подсветка пробелов, табов
;;http://www.emacswiki.org/emacs/whitespace.el
(require 'whitespace)
(global-whitespace-mode t)

;; Highlight current line
(global-hl-line-mode 1)

;;(setq whitespace-style (quote (spaces tabs newline trailing space-mark tab-mark newline-mark)))
(setq whitespace-display-mappings
       ;; all numbers are Unicode codepoint in decimal. try (insert-char 182 ) to see it
      '(
        (space-mark 32 [183] [46]) ; 32 SPACE, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
        (newline-mark 10 [8629 10]) ; 10 LINE FEED
        (tab-mark 9 [8677 9] [92 9]) ; 9 TAB, 9655 WHITE RIGHT-POINTING TRIANGLE 「▷」
        ))
(setq-default indent-tabs-mode nil)

;автокомплит
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

;закрытие парных скобок
;;https://github.com/capitaomorte/autopair
(require 'autopair)
(autopair-global-mode)

;;https://code.google.com/p/yasnippet/
;;(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
;;(require 'yasnippet)
;;(yas/global-mode t)
;;(setq ac-source-yasnippet nil)


;; This are setting for nice tabbar items
;; to have an idea of what it looks like http://imgur.com/b0SNN
;; inspired by Amit Patel screenshot http://www.emacswiki.org/pics/static/NyanModeWithCustomBackground.png
 
;; Tabbar
(require 'tabbar)
;; Tabbar settings
(set-face-attribute
 'tabbar-default nil
 :background "gray20"
 :foreground "gray20"
 :box '(:line-width 1 :color "gray20" :style nil))
(set-face-attribute
 'tabbar-unselected nil
 :background "gray30"
 :foreground "white"
 :box '(:line-width 8 :color "gray30" :style nil))
(set-face-attribute
 'tabbar-selected nil
 :background "gray75"
 :foreground "black"
 :box '(:line-width 8 :color "gray75" :style nil))
(set-face-attribute
 'tabbar-highlight nil
 :background "white"
 :foreground "black"
 :underline nil
 :box '(:line-width 8 :color "white" :style nil))
(set-face-attribute
 'tabbar-button nil
 :box '(:line-width 1 :color "gray20" :style nil))
(set-face-attribute
 'tabbar-separator nil
 :background "gray20"
 :height 0.6)


(dolist (func '(tabbar-mode tabbar-forward-tab tabbar-forward-group tabbar-backward-tab tabbar-backward-group))
      (autoload func "tabbar" "Tabs at the top of buffers and easy control-tab navigation"))
    (defmacro defun-prefix-alt (name on-no-prefix on-prefix &optional do-always)
      `(defun ,name (arg)
         (interactive "P")
         ,do-always
         (if (equal nil arg)
             ,on-no-prefix
           ,on-prefix)))
    (defun-prefix-alt shk-tabbar-next (tabbar-forward-tab) (tabbar-forward-group) (tabbar-mode 1))
    (defun-prefix-alt shk-tabbar-prev (tabbar-backward-tab) (tabbar-backward-group) (tabbar-mode 1))
    (global-set-key [(control tab)] 'shk-tabbar-next)
    (global-set-key [(control shift tab)] 'shk-tabbar-prev)

 ;; Add a buffer modification state indicator in the tab label, and place a
 ;; space around the label to make it looks less crowd.
 (defadvice tabbar-buffer-tab-label (after fixup_tab_label_space_and_flag activate)
   (setq ad-return-value
         (if (and (buffer-modified-p (tabbar-tab-value tab)) (buffer-file-name (tabbar-tab-value tab)))
             (concat " * " (concat ad-return-value " "))
           (concat "   " (concat ad-return-value " ")))))



;; Change padding of the tabs
;; we also need to set separator to avoid overlapping tabs by highlighted tabs
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes (quote ("fa189fcf5074d4964f0a53f58d17c7e360bb8f879bd968ec4a56dc36b0013d29" "eb8701083acffcb4ae592fb78f236b3d5f62cdc841e2b83cefbbfdd4126f205c" default)))
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t)
 '(js2-highlight-level 3)
 '(longlines-auto-wrap nil)
 '(show-paren-mode t)
 '(sr-speedbar-right-side t)
 '(tabbar-separator (quote (0.5)))
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(whitespace-line-column 100))
;; adding spaces
(defun tabbar-buffer-tab-label (tab)
  "Return a label for TAB.
That is, a string used to represent it on the tab bar."
  (let ((label  (if tabbar--buffer-show-groups
                    (format "[%s]  " (tabbar-tab-tabset tab))
                  (format "%s  " (tabbar-tab-value tab)))))
    ;; Unless the tab bar auto scrolls to keep the selected tab
    ;; visible, shorten the tab label to keep as many tabs as possible
    ;; in the visible area of the tab bar.
    (if tabbar-auto-scroll-flag
        label
      (tabbar-shorten
       label (max 1 (/ (window-width)
                       (length (tabbar-view
                                (tabbar-current-tabset)))))))))
 
(tabbar-mode 1)




(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(whitespace-empty ((t (:background "#272822" :foreground "firebrick"))))
 '(whitespace-hspace ((t (:background "#272822" :foreground "#2f2f2f"))))
 '(whitespace-indentation ((t (:background "#272822" :foreground "#3f3f3f"))))
 '(whitespace-newline ((t (:foreground "#3f3f3f" :weight normal))))
 '(whitespace-space ((t (:background "#272822" :foreground "#3f3f3f"))))
 '(whitespace-space-after-tab ((t (:background "#272822" :foreground "#CC9393"))))
 '(whitespace-space-before-tab ((t (:background "#272822" :foreground "#DFAF8F"))))
 '(whitespace-tab ((t (:background "#272822" :foreground "#3f3f3f")))))




