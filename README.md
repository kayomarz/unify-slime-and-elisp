# Unify key bindings: SLIME and Elisp

We try to make consistent **emacs** key bindings between
[Elisp](https://www.gnu.org/software/emacs/manual/html_node/eintr/Preface.html
"Emacs Lisp (Elisp)") and [SLIME](https://slime.common-lisp.dev/ "Emacs mode for
Common Lisp.")

For example, Elisp and SLIME offer a way to describe the function at
[point](https://www.gnu.org/software/emacs/manual/html_node/emacs/Point.html
"Emacs point.").

**Elisp**: `describe-function`  (`C-h f`)

**SLIME**: `slime-describe-function` (`C-c C-d f`)

For consistency we can use `C-h f` for both Elisp and SLIME.

Let's try to reconfigure SLIME for this function and more. The below snippet is
just a start, it is not exhaustive.

# Reconfigure SLIME

Reconfigure **SLIME** key bindings to match **Elisp** defaults. We could also do
it the other way and reconfigure Elisp bindings to match SLIME.

```elisp
(require 'cl-lib)
(cl-macrolet ((def (key fn) `(progn
                               (define-key slime-mode-map (kbd ,key) ,fn)
                               (define-key slime-repl-mode-map (kbd ,key) ,fn)))
              (clear (key) `(progn
                              (define-key slime-mode-map (kbd ,key) nil)
                              (define-key slime-repl-mode-map (kbd ,key) nil))))

;;; slime-describe-symbol: use `C-h o` instead of `C-c C-d d`
             (clear "C-c C-d C-d")
             (clear "C-c C-d d")
             (def "C-h o" 'slime-describe-symbol)

;;; slime-describe-function: use `C-h f` instead of `C-c C-d f`
             (clear "C-c C-d C-f")
             (clear "C-c C-d f")
             (def "C-h f" 'slime-describe-function)
```

For more bindings see <unify-bindings.el>.
