# Unify key bindings: SLIME and Elisp

Our goal is to use consistent emacs shortcuts (key bindings) across
[SLIME](https://slime.common-lisp.dev/ "Emacs mode for Common Lisp.") and
[Emacs Lisp](https://www.gnu.org/software/emacs/manual/html_node/eintr/Preface.html
"Emacs Lisp (Elisp)") (Elisp).

For example, both SLIME and Elisp provide a function to display the documentation of
the function at
[point](https://www.gnu.org/software/emacs/manual/html_node/emacs/Point.html)
(**point** is the current location of the keyboard cursor).

**SLIME**: `slime-describe-function` (`C-c C-d f`)

**Elisp**: `describe-function`  (`C-h f`)

Note that their default key bindings differ. If you find this inconvenient when
switching between SLIME and Elisp, you can set the same key binding for both.

Below, we use `C-h f` for both **SLIME** and **Elisp**

```elisp
(cl-macrolet ((def (key fn) `(progn
                               (define-key slime-mode-map (kbd ,key) ,fn)
                               (define-key slime-repl-mode-map (kbd ,key) ,fn)))
              (clear (key) `(progn
                              (define-key slime-mode-map (kbd ,key) nil)
                              (define-key slime-repl-mode-map (kbd ,key) nil))))

;;; slime-describe-function: use `C-h f` instead of `C-c C-d f`
             (clear "C-c C-d C-f")
             (clear "C-c C-d f")
             (def "C-h f" 'slime-describe-function)
```

See [unify-bindings.el](unify-bindings.el) for more.
