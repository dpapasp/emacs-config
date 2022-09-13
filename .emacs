
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (manoj-dark)))
 '(custom-safe-themes
   (quote
    ("28eb6d962d45df4b2cf8d861a4b5610e5dece44972e61d0604c44c4aad1e8a9d" "143d897548e5a7efb5cf92c35bd39fe7c90cbd28f9236225ad3e80e1b79cef8a" "549ccbd11c125a4e671a1e8d3609063a91228e918ffb269e57bd2cd2c0a6f1c6" "49134260f321d05f13242eb402880cb85d5473071c1c30521a3f081f8bdcf0f9" default)))
 '(package-selected-packages
   (quote
    (green-is-the-new-black-theme calmer-forest-theme chess))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; .emacs.d/init.el


;; ===================================

;; MELPA Package Support

;; ===================================

;; Enables basic packaging support

(require 'package)


;; Adds the Melpa archive to the list of available repositories

(add-to-list 'package-archives

             '("melpa" . "http://melpa.org/packages/") t)


;; Initializes the package infrastructure

(package-initialize)


;; If there are no archived package contents, refresh them

(when (not package-archive-contents)

  (package-refresh-contents))

 ;;(set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>))
 ;;(set-frame-parameter (selected-frame) 'alpha <both>)
;; (set-frame-parameter (selected-frame) 'alpha '(85 . 50))
;;  (add-to-list 'default-frame-alist '(alpha . (85 . 50)))

;; -*- mode: elisp -*-

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen 0)

;; Enable transient mark mode
(transient-mark-mode 1)

(add-to-list 'load-path "~/emacs-load-path")
(add-to-list 'custom-theme-load-path "~/emacs-load-path/themes")
;;;;Org mode configuration
;; Enable Org mode
(require 'org)
;; Make Org mode work with files ending in .org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen

(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))

(load (expand-file-name "~/quicklisp/slime-helper.el"))
  ;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(electric-pair-mode +1)

;; full screen on startup
;; (add-to-list 'default-frame-alist '(fullscreen . maximized))

;; org mode bullets theme
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
