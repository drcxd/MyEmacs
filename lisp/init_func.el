;; (global-set-key (kbd "C-x C-s") 'save-and-delete-trail-white)
(defun save-and-delete-trail-white ()
  (interactive)
  (save-excursion
    (mark-whole-buffer)
    (delete-trailing-whitespace)
    (save-buffer)
    (if (region-active-p)
        (set-mark-command 0))
    )
  )

(provide 'init-func)
