;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;;(require 'powerline)
;;(require 'powerline-evil)

;;(powerline-default-theme)
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
 (setq doom-font (font-spec :family "Jetbrains Mono" :size 14 :weight 'Medium)
       doom-variable-pitch-font (font-spec :family "Jetbrains Mono" :size 14))
(custom-set-faces!
  `(vertical-border :foreground ,(doom-color 'base3)))
;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-nord)
;;
;;(custom-set-faces!
;;  `(vertical-border :foreground ,(doom-color 'base4)))


(custom-set-faces!
  `(highlight :background, (doom-color 'green)))

(custom-set-faces!
  `(doom-modeline-bar :background ,(doom-color 'green)))




(custom-set-faces!
  `(line-number-current-line :foreground ,(doom-color 'white)))

(custom-set-faces!
  `(line-number :foreground ,(doom-color 'base4)))
(custom-set-faces!
  `(fringe :foreground ,(doom-color 'base2)))


(custom-set-faces
 '(org-block-begin-line
   ((t (:background "#323845"))))
 '(org-block
   ((t (:background "#323845"))))
 '(org-block-end-line
   ((t (:background "#323845"))))
 )




(setq evil-normal-state-cursor '(box "#ECEFF4")
      evil-insert-state-cursor '(bar "#ECEFF4")

      evil-visual-state-cursor '(hollow "#ECEFF4"))
;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")
;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type `relative)


(setq doom-modeline-height 28)

(setq doom-modeline-modal-icon nil)

(setq doom-modeline-buffer-state-icon nil)

(setq doom-modeline-icon nil)
(setq doom-modeline-major-mode-icon nil)



(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-shortmenu)
(add-hook! '+doom-dashboard-mode-hook  (hl-line-mode -1))

;;(hide-mode-line-mode 1)
(setq-hook! '+doom-dashboard-mode-hook evil-normal-state-cursor (list nil))
(setq-default window-divider-default-bottom-width 0)

