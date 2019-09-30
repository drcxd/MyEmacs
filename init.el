(defmacro require-init (pkg)
  `(load (file-truename (foramt "~/.emacs.d/lisp/%s", pkg)) t t))

(require-init 'init-elpa)
(require-init 'init-company)
(require-init 'init-helm)
(require-init 'init-misc)
(require-init 'init-func)
(require-init 'init-linum)
