;;; `C-h o` instead of `C-c C-d d`
(define-key slime-mode-map (kbd "C-c C-d C-d") nil) ; unbind 'slime-describe-symbol
(define-key slime-mode-map (kbd "C-c C-d d") nil) ; unbind 'slime-describe-symbol
(define-key slime-mode-map (kbd "C-h o") 'slime-describe-symbol)

;;; `C-h f` instead of `C-c C-d f`
(define-key slime-mode-map (kbd "C-c C-d C-f") nil) ; unbind 'slime-describe-function
(define-key slime-mode-map (kbd "C-c C-d f") nil) ; unbind 'slime-describe-function
(define-key slime-mode-map (kbd "C-h f") 'slime-describe-function)

;;; `C-h f` instead of `C-c C-d h`
(define-key slime-mode-map (kbd "C-c C-d h") nil) ; unbind 'slime-documentation-lookup
(define-key slime-mode-map (kbd "C-h F") 'slime-documentation-lookup)

(define-key slime-mode-map (kbd "C-c C-d a") nil)
(define-key slime-mode-map (kbd "C-h a") 'slime-apropos)

(define-key slime-mode-map (kbd "C-c C-d p") nil)
(define-key slime-mode-map (kbd "C-h p") 'slime-apropos-package)

(define-key slime-mode-map (kbd "C-c C-d #") nil)
(define-key slime-mode-map (kbd "C-h #") 'common-lisp-hyperspec-lookup-reader-macro)

(define-key slime-mode-map (kbd "C-c TAB") nil)
(define-key slime-mode-map (kbd "C-M-i") 'completion-at-point)
