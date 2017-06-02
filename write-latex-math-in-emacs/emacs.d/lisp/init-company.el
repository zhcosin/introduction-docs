
;; 如果 company 未安装，则进行安装.
(install-package-if-not-found 'company)

;; 引用 package company，并开启全局 company 补全
(use-package company-mode
  :config
  (global-company-mode t))

;; 提供特性 init-company，供主配置文件中 require 特性.
(provide 'init-company)
