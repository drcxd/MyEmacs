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
;; (require 'company-lsp)
;; (push 'company-lsp company-backends)
;; ************ hs mode ***********
(add-hook 'c-mode-common-hook 'hs-minor-mode)
(add-hook 'c++-mode-common-hook 'hs-minor-mode)
;; ************ parenthesis ************
(show-paren-mode t)
(electric-pair-mode t)
(require 'mic-paren)
(paren-activate)
;; ************ color-theme ***********
;; (load-theme 'afternoon t)
;; (load-theme 'ample-zen t)
;; (load-theme 'deeper-blue t)
;; (load-theme 'busybee t)
;; (load-theme 'borland-blue t)
;; (load-theme 'metalheart t)
;; (load-theme 'calmer-forest t)
(require `color-theme)
(color-theme-initialize)
(color-theme-oswald)
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
(setq aw-keys '(?q ?a ?z ?w ?s ?x ?e ?d ?c))
;; ************ my function **********************
(load "my_func.el")
;; ************ fly check ************************
(add-hook 'after-init-hook #'global-flycheck-mode)
;; ************ cquery ***************************
;; (setq cquery-executable "~/Downloads/cquery/bin/cquery")
;; (require 'cquery)
