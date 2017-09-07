(require 'cc-mode)
(require 'semantic)
(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
(global-semantic-idle-summary-mode 1)
(semantic-mode 1)
(defun my-semantic-hook()
  ;; add entry here to allow semantic complete extern contents
  (semantic-add-system-include "/usr/lib/gcc/x86_64-pc-cygwin/5.4.0/include/c++/u")
  )
(add-hook 'semantic-init-hooks 'my-semantic-hook)
;; ************ ede *****************
(require 'ede)
(global-ede-mode 1)
;; (load "ede_projects.el")
