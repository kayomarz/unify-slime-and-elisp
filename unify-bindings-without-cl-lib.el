;;; `C-h o` instead of `C-c C-d d`
(define-key slime-mode-map (kbd "C-c C-d C-d") nil) ; unbind 'slime-describe-symbol
(define-key slime-mode-map (kbd "C-c C-d d") nil) ; unbind 'slime-describe-symbol
(define-key slime-mode-map (kbd "C-h o") 'slime-describe-symbol)

;;; `C-h f` instead of `C-c C-d f`
(define-key slime-mode-map (kbd "C-c C-d C-f") nil) ; unbind 'slime-describe-function
(define-key slime-mode-map (kbd "C-c C-d f") nil) ; unbind 'slime-describe-function
(define-key slime-mode-map (kbd "C-h f") 'slime-describe-function)
(define-key slime-mode-map (kbd "C-c C-d h") nil) ; unbind 'slime-documentation-lookup

;;; `C-h f` instead of `C-c C-d h`
(define-key slime-mode-map (kbd "C-h F") 'slime-documentation-lookup)

;;; `C-M-i` instead of `C-c TAB`
(define-key slime-mode-map (kbd "C-c TAB") nil) ; unbind 'completion-at-point
(define-key slime-mode-map (kbd "C-M-i") 'completion-at-point)
