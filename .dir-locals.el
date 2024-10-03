((nil . (
         (eval . (setq auto-mode-interpreter-regexp "#![ 	]?\\([^ 	\n]*/bin/env\\(?: -S\\)?[ 	]\\)?\\([^ 	\n]+\\)")) ; will recognize shebang lines like '#!/usr/bin/env bash -S ....' — ordinarily the '-S' is not recognized.
         (eval . (setq projectile-enable-caching nil)) ; disable caching, provides very little performance improvements while sacrificing liveliness, for example if you $ git pull, you won't see new files.
         (fill-column . 110) ; 'officially' our line length is 110, but the linting 'cut off' is up to ~120 characters
         (comment-column . 0) ; stop clojure-mode/emacs from right-aligning single semicolon comments
         (sort-fold-case . t)


         ;;---------------------------------------------------------------------------------------------------
         ;; Clojure
         (clojure-align-forms-automatically . t) ; column-level alignment of juxtaposed map keys & vals.
         (clojure-indent-style . align-arguments)

         ;;---------------------------------------------------------------------------------------------------
         ;; Cider / REPL
         (cider-clojure-cli-aliases . ":datomic")
         (cider-dynamic-indentation . nil)

         ;;---------------------------------------------------------------------------------------------------
         ;; Clojure Refactoring Tools
         (cljr-auto-sort-ns . t)
         (cljr-favor-prefix-notation . nil)
         (cljr-ignore-analyzer-errors . t)
         (cljr-magic-requires . t) ; TODO(jbjack1): what's the better UX, :prompt or 't ?
         (cljr-middleware-ignored-paths . ()) ;  TODO: what's this for "scripts/repl/.*" ?
         (cljr-suppress-middleware-warnings . t)

         ;; NOTE: If you edit this value please also update .clj-kondo/config.edn correspondingly
         

         ;;---------------------------------------------------------------------------------------------------
         ;; nrepl
         (nrepl-sync-request-timeout . 40)
         
         )))



;; -----------------------------------------------------------------------------------------------------------
;; -----------------------------------------------------------------------------------------------------------
;; Developer Notes
;;

;; (eval . (let ((dir (file-name-directory (or load-file-name buffer-file-name))))
;;           (message "Current directory is: %s" dir)))
