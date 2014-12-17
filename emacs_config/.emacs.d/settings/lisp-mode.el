;;lisp-mode
(require 'lisp)

;;slime
(require 'slime-autoloads)
(setq inferior-lisp-program (executable-find "sbcl"))

(provide 'lisp-mode)
