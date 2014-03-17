; load settings path
(add-to-list 'load-path "~/.emacs.d/settings")

; load settings
(require 'general-settings)

; set plugins path
(setq plugin-path "~/.emacs.d/plugins/")

; install el-get
(require 'elget-install)

; install other plugins using el-get
(setq
 my-packages '(auto-complete
	       jedi
	       flycheck
	       ))

; first enable shallow clone, so we don't need to clone the entire
; history of every project
(setq el-get-git-shallow-clone t)

; then install
(el-get 'sync my-packages)

; functions to load plugins
(defun make-plugin-path (plugin)
  (expand-file-name (concat plugin-path plugin)))
(defun include-plugin (plugin)
  (add-to-list 'load-path (make-plugin-path plugin)))

; Auto complete
(require 'auto-complete-plugin)

; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

; python-mode
(require 'python-mode)
