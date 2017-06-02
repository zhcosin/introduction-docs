;; 如果 cdlatex 没有安装，则进行安装
(install-package-if-not-found 'cdlatex)

;; 在 LaTeX 模式被启用时，启用 cdlatex
(use-package cdlatex
  :config
  (add-hook 'org-mode-hook 'turn-on-org-cdlatex)
  (add-hook 'LaTeX-mode-hook 'turn-on-cdlatex))
  
;; 提供 init-cdlatex 特性.
(provide 'init-cdlatex)
