;;(set-variable (quote scheme-program-name) "stk")
;;color
(require 'color-theme)
(setq colot-theme-is-global t)
(color-theme-initialize)
(color-theme-dark-laptop)
;; highlight parentheses
(show-paren-mode t)
;; highlight grammer
(global-font-lock-mode t)
;;line-mode
(global-linum-mode t)
;; in every buffer, the line which contains the cursor will be fully highlighted
(global-hl-line-mode 1)
;; turn off tab character
(setq-default indent-tabs-mode nil)
;;Show column-number in the mode line
(column-number-mode 1)
(setq-default make-backup-files nil)
(setq x-select-enable-clipboard t)
;;Change title
(setq frame-title-format "Game makes fun!")
;;no tool box
(tool-bar-mode 0)
;;org mode
(setq c-basic-offset 4)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)

(global-set-key [f11] 'my-fullscreen)
(defun my-fullscreen ()
  (interactive)
  (x-send-client-message
    nil 0 nil "_NET_WM_STATE" 32
    '(2 "_NET_WM_STATE_FULLSCREEN" 0))
)
(defun my-maximized ()
  (interactive)
  (x-send-client-message
    nil 0 nil "_NET_WM_STATE" 32
    '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
  (x-send-client-message
    nil 0 nil "_NET_WM_STATE" 32
    '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
)
(my-maximized)
(put 'dired-find-alternate-file 'disabled nil)

(require 'cc-mode)
(require 'google-c-style)
(defun my-build-tab-stop-list (width)
  (let ((num-tab-stops (/ 80 width))
        (counter 1)
        (is nil))
    (while (<= counter num-tab-stops)
           (setq ls (cons (* width counter) ls))
           (setq counter (1+ counter)))
    (set (make-local-variable 'tab-stop-list) (nreverse ls))))

(defun my-c-mode-common-hook ()
  (c-set-style "google")
  (setq tab-width 4)
  (my-build-tab-stop-list tab-width)
  (setq c-basic-offset tab-width)
  (setq indent-tabs-mode nil)
  (local-set-key "\C-o" 'ff-get-other-file)
  (c-set-offset 'substatement-open 0)
  (c-set-offset 'arglist-intro c-lineup-arglist-intro-after-paren)
  )

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
(add-hook 'c++-mode-common-hook 'my-c-mode-common-hook)

(defun cpplint ()
  (interative)
  (compilation-start (concat "python ~/bin/cpplint.py " (buffer-file-name))))
