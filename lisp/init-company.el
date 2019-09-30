(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-backends (delete 'company-clang company-backends))
(require 'company-c-headers)
(add-to-list 'company-backends 'company-c-headers)
(push 'company-capf company-backends)

(provide 'init-company)
