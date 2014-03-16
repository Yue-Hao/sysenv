; functions to find the current OS
(defun system-is-mac ()
  (interactive)
  (string-equal system-type "darwin"))

(defun system-is-linux ()
  (interactive)
  (string-equal system-type "gnu/linux"))

; set command key to be meta instead of option
(if (system-is-mac)
   (setq ns-command-modifier 'meta))

; don't show the startup screen
(setq inhibit-startup-screen 1)
; don't show the menu bar
(menu-bar-mode 0)
; don't show the tool bar
(require 'tool-bar)
(tool-bar-mode 0)
; don't show the scroll bar
(scroll-bar-mode 0)
; turn on mouse wheel support for scrolling
(require 'mwheel)
(mouse-wheel-mode 1)
; number of characters until the fill column
(setq-default fill-column 70)

; default window width and height
(defun custom-set-frame-size ()
  (add-to-list 'default-frame-alist '(height . 53))
  (add-to-list 'default-frame-alist '(width . 178)))
(custom-set-frame-size)
(add-hook 'before-make-frame-hook 'custom-set-frame-size)

; interactively do things (ido) mode
(require 'ido)
(ido-mode 1)

(provide 'general-settings)
