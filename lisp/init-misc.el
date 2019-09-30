;; date time
(setq display-time-24hr-format t) ; the date in modeline is English too, magic!
(setq display-time-day-and-date t)
(display-time) ; show date in modeline

;; auto save
;; TODO

;; close auto backup
(setq make-backup-files nil)

;; hs-mode
(add-hook 'c-mode-common-hook 'hs-minor-mode)
(add-hook 'c++-mode-common-hook 'hs-minor-mode)

;; parenthesis
(show-paren-mode t)
(electric-pair-mode t)
(require 'mic-paren)
(paren-activate)

;; indent
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
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default c-basic-offset 4)

;; ace-window
(global-set-key (kbd "C-x o") 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

;; visual
(menu-bar-mode 0)

;; c++ mode for *.h files
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; linum-mode
(global-linum-mode t)

(provide 'init-misc)
