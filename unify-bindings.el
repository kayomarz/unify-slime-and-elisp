(require 'cl-lib)
(cl-macrolet ((def (key fn) `(define-key slime-mode-map (kbd ,key) ,fn))
              (clear (key) `(define-key slime-mode-map (kbd ,key) nil)))
  ;;; slime-describe-symbol: use `C-h o` instead of `C-c C-d d`
             (clear "C-c C-d C-d")
             (clear "C-c C-d d")
             (def "C-h o" 'slime-describe-symbol)

  ;;; slime-describe-function: use `C-h f` instead of `C-c C-d f`
             (clear "C-c C-d C-f")
             (clear "C-c C-d f")
             (def "C-h f" 'slime-describe-function)

  ;;; slime-documentation-lookup: use `C-h F` instead of `C-c C-d h`
             (clear "C-c C-d h")
             (def "C-h F" 'slime-documentation-lookup)

  ;;; completion-at-point: use `C-M-i` instead of `C-c TAB`
             (clear "C-c TAB")
             (def "C-M-i" 'completion-at-point))
