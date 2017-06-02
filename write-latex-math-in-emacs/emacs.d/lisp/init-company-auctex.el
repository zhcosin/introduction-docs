;; 如果没有安装 company-auctex，则进行安装
(install-package-if-not-found 'company-auctex)

;; 加载 company-auctex 并初始化
(use-package company-auctex
  :config
  (company-auctex-init))

(provide 'init-company-auctex)
