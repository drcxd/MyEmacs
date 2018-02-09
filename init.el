;; ************ directories *******************
(add-to-list 'load-path "~/.emacs.d/elisp/")
;; ************ cedet **********************
;; (load "cedet-init.el")
;; ************ melpa **************
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
;; ************ close auto backup *************
(setq make-backup-files nil)
;; ************ company mode ******************
(add-to-list 'load-path "~/.emacs.d/elpa/company-0.9.3")
(require 'company)
;; (add-hook 'c-mode-common-hook 'company-mode)
;; (add-hook 'c++-mode-common-hook 'company-mode)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-backends (delete 'company-clang company-backends))
(add-to-list 'load-path "~/.emacs.d/elpa/company-c-headers-20170531.1330/")
(require 'company-c-headers)
(add-to-list 'company-backends 'company-c-headers)
(add-to-list 'company-c-headers-path-system "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/")
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
