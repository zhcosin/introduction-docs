
;; 官方的插件仓库在国外，网速比较慢，网友“子龙山人”搭建了国内的镜像，每隔几个小时就与
;; 官方的仓库同步一次，我们使用这个国内的镜像。
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))

;; 初始化 package 工具
(package-initialize)

;; 在必要情况下刷新 package 的目录列表
(unless package-archive-contents
  (package-refresh-contents))

;; 定义一个用于自动安装指定 package 的函数，如果发现没有安装，则进行安装.
(defun install-package-if-not-found(pkg)
  (unless (package-installed-p pkg)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents))
  (message "install package %s ..." pkg)
  (package-install pkg))

;; 提供 init-packages 特性，供 require 引用
(provide 'init-packages)
