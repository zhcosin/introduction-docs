
;; 如果 auctex 未安装，则进行安装
(install-package-if-not-found 'auctex)

;; 加载 auctex.el 文件
(load "auctex.el" nil t t)

;; 如果需要预览 latex，则去掉下面这行前面的注释
;;(load "preview-latex.el" nil t t)

;; 如果是 windows 系统，则需要 MikTeX.
(if (string-equal system-type "windows-nt")
  (require 'tex-mik))
  
;; 默认情况下，编译的时候总是假定正在编译的 tex 文件为主文件，如果去掉下面这行的注释，
;; 则在每次编译时都会询问哪一个 tex 文件是主文件。
(setq-default TeX-master nil) ; Query for master file.

;; 定义 LaTeX 模式在哪些环境下启用
(mapc (lambda (mode)
	(add-hook 'LaTeX-mode-hook mode))
      (list 'LaTeX-math-mode
            'turn-on-reftex))

;; 作 LaTeX 相关设定
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (setq TeX-auto-untabify t     ; 在保存的时候自动去掉的 TAB 空白
                  TeX-engine 'xetex       ; 默认使用 XeLaTeX 编译引擎
                  TeX-show-compilation t) ; 显示编译输出窗口
            (TeX-global-PDF-mode t)       ; 启用 PDF 模式
            (setq TeX-save-query nil)
            (imenu-add-menubar-index)
            (define-key LaTeX-mode-map (kbd "TAB") 'TeX-complete-symbol)))

(provide 'init-auctex)
