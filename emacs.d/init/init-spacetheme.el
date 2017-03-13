(require-package 'spaceline)
(require 'spaceline-config)

(setq powerline-default-separator 'slant)

(setq ns-use-srgb-colorspace nil)
(load-theme 'spacemacs-dark t)
(spaceline-spacemacs-theme)

(spaceline-helm-mode t)
(spaceline-info-mode)

(provide 'init-spacetheme)
