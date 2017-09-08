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
(add-to-list 'company-c-headers-path-system "/usr/lib/gcc/x86_64-pc-cygwin/5.4.0/include/c++/")
;; ************ hs mode ***********
(add-hook 'c-mode-common-hook 'hs-minor-mode)
(add-hook 'c++-mode-common-hook 'hs-minor-mode)
;; ************ parenthesis ************
(show-paren-mode t)
(electric-pair-mode t)
(defadvice show-paren-function
  (after show-matching-paren-offscreen activate)
  (interactive)
  (let* ((cb (char-before (point)))
	 (matching-text (and cb
			     (char-equal (char-syntax cb) ?\) )
			     (blink-matching-open))))
    (when matching-text (message matching-text))))
;; ************ color-threme ***********
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/ahungry-theme-1.4.0")
;; (setq ahungry-theme-font-settings nil)
;; (load-theme 'ahungry t)
;; (load-theme 'afternoon t)
;; (load-theme 'badwolf t)
;; (load-theme 'ample t)
(load-theme 'ample-light t)
;; (load-theme 'deeper-blue t)
;; (load-theme 'ample-zen t)
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
;; ************ custom ***************************
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (magit browse-at-remote ample-zen-theme alect-themes abyss-theme ace-window sr-speedbar ample-theme badwolf-theme afternoon-theme ahungry-theme company)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "仿宋" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))
