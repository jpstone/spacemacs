;;; packages.el --- eslintd layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Justin Stone <jstone@HRC-000507.local>
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
;; added to `eslintd-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `eslintd/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `eslintd/pre-init-PACKAGE' and/or
;;   `eslintd/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst jpstone-eslintd-packages '(eslintd-fix))

(defun jpstone-eslintd/init-eslintd-fix ()
  (use-package eslintd-fix
    :defer t
    :commands eslintd-fix-mode
    :init
    (progn
      (add-hook 'js2-mode-hook #'eslintd-fix-mode)
      (add-hook 'react-mode-hook #'eslintd-fix-mode))))

;;; packages.el ends here
