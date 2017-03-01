;;; packages.el --- visual-regexp layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author:  <jdamp@ThinkPadT450s>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `visual-regexp-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `visual-regexp/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `visual-regexp/pre-init-PACKAGE' and/or
;;   `visual-regexp/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst visual-regexp-packages
  '(visual-regexp visual-regexp-steroids)
  "The list of Lisp packages required by the visual-regexp layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")

(defun visual-regexp/init-visual-regexp ()
  (use-package visual-regexp
    :defer t
    :config
    (progn
      (define-key global-map (kbd "C-c r") 'vr/replace)
      (define-key global-map (kbd "C-c q") 'vr/query-replace)
      ;; if you use multiple-cursors, this is for you:
      (define-key global-map (kbd "C-c m") 'vr/mc-mark)
      )
    :init
    ))

(defun visual-regexp/init-visual-regexp-steroids ()
  (use-package visual-regexp
    :defer t
    :config
    :init
    ))


;;; packages.el ends here
