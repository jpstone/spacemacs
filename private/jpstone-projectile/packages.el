;;; packages.el --- jpstone-projectile layer packages file for Spacemacs.
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
;; added to `jpstone-projectile-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `jpstone-projectile/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `jpstone-projectile/pre-init-PACKAGE' and/or
;;   `jpstone-projectile/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst jpstone-projectile-packages '(projectile))

(defun jpstone-projectile/post-init-projectile ()
  (use-package projectile
    :defer t
    :init
    (progn
      (spacemacs/declare-prefix "op" "projects")
      (spacemacs/declare-prefix "on" "npm")
      (spacemacs/set-leader-keys
        "ops" 'helm-projectile-grep
        "opt" 'projectile-multi-term-in-root
        "ond" 'jpstone/npm-run-dev
        "oni" 'jpstone/npm-install
        "onp" 'jpstone/npm-run-prod
        "onb" 'jpstone/npm-run-build))
    :config
    (progn ()
           (projectile-register-project-type 'npm '("package.json")))))

;;; packages.el ends here
