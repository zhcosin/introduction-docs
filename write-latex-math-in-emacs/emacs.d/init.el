
;; 添加 *.el 文件搜索路径，在使用 require 加载特性时会从 load-path 的路径列表中
;; 逐个寻找对应文件.
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

;; Emacs Lisp 的特性加载机制，在某个 *.el 文件中使用
;; (provide 'future-key)
;; 以表明此文件中提供了一个名为 'future-key' 的特性，然后在主配置文件中使用
;; (require 'future-key)
;; Emacs 就会在变量 load-path 中的路径列表中，逐个查找名为 future-key.el
;; 的文件，并在其中寻找 provide 声明，若找不到则报错。

;; 加载特性 init-packages，实际上就是加载文件 lisp/init-packages.el
;; 这个文件中做了两件事情:
;;   1. 官方的插件仓库在国外，下载速度较慢，切换使用国内由网友"子龙山人"搭建的镜像.
;;   2. 实现一个用于自动安装指定 package 的函数.
(require 'init-packages)

;; 下载安装 use-package, 此插件无需配置，这个 package 是用来使配置的模块化更好。
(install-package-if-not-found 'use-package)

;; 加载插件 company 的配置
(require 'init-company)

;; 加载插件 auctex 的配置
(require 'init-auctex)

;; 加载 company-auctex 的配置
(require 'init-company-auctex)

;; 加载 cdlatex 的配置
(require 'init-cdlatex)
