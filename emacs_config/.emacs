(defun system-is-mac ()
  (interactive)
  (string-equal system-type "darwin"))

(defun system-islinux ()
  (interactive)
  (string-equal system-type "gnu/linux"))

; set command key to be meta instead of option
(if (system-is-mac)
   (setq ns-command-modifier 'meta))