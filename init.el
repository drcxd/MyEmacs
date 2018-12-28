;; ************ directories *******************
(add-to-list 'load-path "~/.emacs.d/elisp/")
;; ************ melpa **************
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
;; ************ close auto backup *************
(setq make-backup-files nil)
;; ************ company mode ******************
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-backends (delete 'company-clang company-backends))
(require 'company-c-headers)
(add-to-list 'company-backends 'company-c-headers)
(push 'company-capf company-backends)
;; ************ hs mode ***********
(add-hook 'c-mode-common-hook 'hs-minor-mode)
(add-hook 'c++-mode-common-hook 'hs-minor-mode)
;; ************ parenthesis ************
(show-paren-mode t)
(electric-pair-mode t)
(require 'mic-paren)
(paren-activate)
;; ************ color-theme ***********
;; ***************** indent & tab ****************
(load "indent.el")
;; ************ auto c++-mode for *.h ************
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
;; ************ auto linum-mode ******************
(global-linum-mode t)
;; ************ helm *****************************
(load "init-helm.el")
;; ************ spell check **********************
(setq-default ispell-program-name "aspell")
;; ************ ace window ***********************
(global-set-key (kbd "C-x o") 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
;; ************ my function **********************
(load "my_func.el")
;; ************ fly check ************************
;; (add-hook 'after-init-hook #'global-flycheck-mode)
