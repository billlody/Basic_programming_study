(defconst *is-a-mac* (eq system-type 'darwin))

(setq
 backup-by-copying t
 backup-directory-alist
 '((".". "./.saves"))
 delete-old-version t
 kept-new-version 6
 kept-old-version 2
 version-control 5)

(setq column-number-mode t)

(put 'upcase-region 'disabled nil)

(global-linum-mode 'linum-mode)

;; (partial-completion-mode 1)

(icomplete-mode 1)

(display-time-mode 1)

(global-font-lock-mode t)

;;(transient-mark-mode t)

(show-paren-mode t)
(setq show-paren-style 'parentheses)

(setq x-select-enable-clipboard t)
(setq frame-title-format "%b %l")

(setq tab-width 4)

(mouse-wheel-mode t)

;;(setq indent-tabs-mode t)
(setq c-indent-level 4)
(setq c-continued-statement-offset 4)
(setq c-brace-offset -4)
(setq c-label-offset -4)
(setq c-basic-offset 4)
(global-set-key "\C-m" 'reindent-then-newline-and-indent)
(define-key global-map "\C-c\C-f" 'speedbar-get-focus)
(define-key global-map "\C-c\C-g" 'goto-line)

(setq font-lock-maximum-decoration t)

(add-to-list 'load-path (expand-file-name "library" user-emacs-directory))

(require 'auto-complete)
(global-auto-complete-mode t)

;; (require 'init_python)
;; load whitespace
(require 'whitespace)
(setq whitespace-line-column 100) ;; limit line length
(setq whitespace-style '(face tabs empty trailing lines-tail))

(defun enable-whitespace ()
  (add-hook 'before-save-hook 'whitespace-cleanup nil t)
  (setq whitespace-action '(auto-cleanup))
  (whitespace-mode +1))
;;(add-hook 'prog-mode-hook #'enable-whitespace)

;; cscope, auto finding plugin
;; (load-library "xcscope")
;; (cscope-setup)

;; yasnippet
;; (add-to-list 'load-path "~/.emacs.d/library/")
(require 'cl-lib)
(setq speedbar-show-unknown-files t)

;; speedbar
(require 'sr-speedbar)
(define-key global-map "\C-co" 'sr-speedbar-open)
(define-key global-map "\C-cc" 'sr-speedbar-close)


;; undo
(require 'undo-tree)
(global-undo-tree-mode)

;; (normal-erase-is-backspace-mode t)

;; (add-to-list 'load-path "~/.emacs.d/yasnippet")
;; (add-to-list 'load-path (expand-file-name "yasnippet" user-emacs-directory))
;; (require 'yasnippet)
;; (yas-global-mode 1)

;; python
;; (require 'py-autopep8)
;; (add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
;; (setq py-autopep8-options '("--max-line-length=100"))

;; (require 'init-exwm)


;; gnuplot
(require 'gnuplot-mode)
(setq auto-mode-alist
	  (append '(("\\.\\(plt\\|gp\\)$" . gnuplot-mode)) auto-mode-alist))
(put 'downcase-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
