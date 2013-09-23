(package-initialize)

;; Fix path
(setenv "PATH" (concat "/usr/texbin:/usr/local/bin:" (getenv "PATH")))
(setq exec-path (append '("/usr/texbin" "/usr/local/bin") exec-path))

;; Package repositories
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Various EMACS options
(setq ring-bell-function 'ignore)
(setq make-backup-files nil)
(setq inhibit-splash-screen t)

(setq default-frame-alist '(
                (width . 90)
                (height . 40) ))

;; Encryption
(require 'epa-file)
(epa-file-enable)
(setq epa-file-select-keys nil)
(setq epa-file-cache-passphrase-for-symmetric-encryption t)

;; Tramp
(require 'tramp)
(setq tramp-default-method "scp")

;; Org-mode
(setq org-agenda-files '("~/Dropbox/agenda.org"))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-hide-leading-stars t)
(setq org-todo-keywords '((type "TODO" "DEFERRED" "WAITING" "DONE")))
(setq org-todo-keyword-faces
           '(("WAITING" . org-block) ("DEFERRED" . org-block) ("DONE" . org-done)))
(setq org-agenda-custom-commands 
      '(("n" "Show TODO items" todo "TODO")
	("w" "Weekly review"
	 ((agenda "" ((org-agenda-ndays 7)))
	  (todo "TODO")
	  (todo "DEFERRED")
	  (todo "WAITING")))))
(setq org-stuck-projects '("+LEVEL=1" ("TODO" "DONE") nil "SCHEDULED:\\|DEADLINE:"))

;; Theme
(load-theme 'solarized-dark t)
(add-hook 'css-mode-hook 'rainbow-mode)
(set-default-font "PragmataPro-14")

;; Disable menu and tool bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Line numbers
(require 'linum)
(global-linum-mode 1)
(setq linum-format "%d  ")
(column-number-mode 1)

;; Highlight current line

(global-hl-line-mode 1)

;; EVIL!
(require 'evil)
(evil-mode 1)
(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up) ; make C-u behave as in Vim

;; make jj behave as ESC (source: github.com/bergmannf/dotfiles)
(define-key evil-insert-state-map "j" #'cofi/maybe-exit)

(evil-define-command cofi/maybe-exit ()
  :repeat change
  (interactive)
  (let ((modified (buffer-modified-p)))
    (insert "j")
    (let ((evt (read-event (format "Insert %c to exit insert state" ?j)
                           nil 0.5)))
      (cond
       ((null evt) (message ""))
       ((and (integerp evt) (char-equal evt ?j))
        (delete-char -1)
        (set-buffer-modified-p modified)
        (push 'escape unread-command-events))
       (t (setq unread-command-events (append unread-command-events
                                             (list evt))))))))

;; Enable mouse support
(unless window-system
  (require 'mouse)
  (xterm-mouse-mode t)
  (global-set-key [mouse-4] '(lambda ()
			       (interactive)
			       (scroll-down 1)))
  (global-set-key [mouse-5] '(lambda ()
			       (interactive)
			       (scroll-up 1)))
  (defun track-mouse (e))
  (setq mouse-sel-mode t)
  )

;; Fix scrolling
(setq redisplay-dont-pause t
  scroll-margin 1
  scroll-step 1
  scroll-conservatively 10000
  scroll-preserve-screen-position 1)

;; Rainbow-delimiters and Autopair
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(require 'autopair)
(autopair-global-mode)

;; Ido mode
(require 'ido)
(ido-mode t)

;; Snippets
(require 'yasnippet)
(yas-global-mode 1)

;; Markdown
(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; Mail
(setq send-mail-function 'sendmail-send-it)
