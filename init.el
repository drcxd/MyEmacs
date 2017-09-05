;; ************ directories *******************
(add-to-list 'load-path "~/.emacs.d/elpa/company-0.9.3")
(add-to-list 'load-path "~/.emacs.d/elpa/company-c-headers-20170531.1330/")
(add-to-list 'load-path "~/.emacs.d/elisp/")
(add-to-list 'load-path "~/.emacs.d/cedet-1.1")
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
(require 'company)
(require 'company-c-headers)
;; (add-hook 'c-mode-common-hook 'company-mode)
;; (add-hook 'c++-mode-common-hook 'company-mode)
(add-hook 'after-init-hook 'global-company-mode)
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
(load-theme 'badwolf t)
;; (load-theme 'ample t)
;; (load-theme 'deeper-blue t)
;; ************ indent&tab *************
;; AaronL's C-style
;; (setq-default c-indent-tabs-mode t   ; Pressing TAB should cause indentation
;;               c-indent-level 4       ; A TAB is equivilent to four spaces
;;               c-argdecl-indent 0     ; Do not indent argument decl's extra
;;               c-tab-always-indent t
;;               backward-delete-function nil) ; DO NOT expand tabs when deleting
;; (c-add-style "my-c-style" '((c-continued-statement-offset 4))) ; If a statement continues on the next line, indent the continuation by 4
;; (defun my-c-mode-hook ()
;;   (c-set-style "my-c-style")
;;   (c-set-offset 'substatement-open '0) ; brackets should be at same indentation level as the statements they open
;;   (c-set-offset 'inline-open '+)
;;   (c-set-offset 'block-open '+)
;;   (c-set-offset 'brace-list-open '+)   ; all "opens" should be indented by the c-indent-level
;;   (c-set-offset 'case-label '+))       ; indent case labels by c-indent-level, too
;; (add-hook 'c-mode-hook 'my-c-mode-hook)
;; (add-hook 'c++-mode-hook 'my-c-mode-hook)
;; microsoft c/c++ indentation setting
(c-add-style "microsoft"
             '("stroustrup"
               (c-offsets-alist
                (innamespace . -)
                (inline-open . 0)
                (inher-cont . c-lineup-multi-inher)
                (arglist-cont-nonempty . +)
                (template-args-cont . +))))
(setq c-default-style "microsoft")
;; my original setting
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(setq-default c-basic-offset 4)
;; (defun my-c-mode-hook ()
;;   (c-set-offset 'innamespace 0))
;; (add-hook 'c-mode-hook 'my-c-mode-hook)
;; (add-hook 'c++-mode-hook 'my-c-mode-hook)
;; ************ auto c++-mode for *.h ************
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
;; ************ auto linum-mode ******************
(global-linum-mode t)
;; ************ helm *****************************
(load "init-helm.el")
;; ************ spell check **********************
(setq-default ispell-program-name "aspell")
;; ************ custom ***************************
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (sr-speedbar ample-theme badwolf-theme afternoon-theme ahungry-theme company)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "仿宋" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))
