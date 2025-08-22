(setq package-install-upgrade-built-in t)
(require 'package)
(add-to-list 'package-archives
            '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(ido-mode 1)
(ido-everywhere 1)
(show-paren-mode 1)
(electric-pair-mode 1)


;; key binding

(global-set-key (kbd "C-e") 'eshell)
(global-set-key (kbd "C-d") 'dired)
(global-set-key (kbd "C-b") 'switch-to-buffer)
(global-set-key (kbd "C-k") 'kill-buffer)
(global-set-key (kbd "C-f") 'find-file)
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-x s") 'isearch-forward)
(global-set-key (kbd "C-q") 'save-buffers-kill-emacs)
(global-set-key (kbd "C-l") 'list-buffers)

;; key binding for dired


;;magit
(global-set-key (kbd "C-x g") 'magit-status)



;; other
(setq make-backup-files nil)
(setq inhibit-startup-screen t)
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq auto-save-default nil)
(setq auto-save-file-name-transforms
      `((".*" "~/.emacs.d/auto-saves/" t)))

(custom-set-variables
 
 '(cua-mode t)
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7" default))
 '(display-line-numbers 'relative)
 '(package-selected-packages
   '(flycheck lsp-mode company magit sequential-yank ## gruber-darker-theme smex)))
(custom-set-faces

 )
(progn (unload-feature 'seq t) (require 'seq))

