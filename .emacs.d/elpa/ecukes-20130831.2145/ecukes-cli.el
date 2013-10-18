;;; ecukes-cli.el --- Entry point when running Ecukes from terminal

(require 'f)
(require 's)
(require 'dash)
(require 'commander)

(defvar ecukes-path (f-dirname (f-this-file)))

(add-to-list 'load-path ecukes-path)

(require 'ecukes-core)
(require 'ecukes-load)
(require 'ecukes-new)
(require 'ecukes-project)
(require 'ecukes-run)
(require 'ecukes-stats)
(require 'ecukes-reporter)



(eval-when-compile
  (defvar debug-on-entry)
  (defvar ecukes-error-log-file))

(defvar ecukes-include-tags nil
  "Scenario tags to include.")

(defvar ecukes-exclude-tags nil
  "Scenario tags to exclude.")

(defvar ecukes-cli-reporter "dot"
  "Default reporter.")

(defvar ecukes-cli-with-doc nil
  "If the list-steps command show doc or not.")

(defvar ecukes-cli-with-file nil
  "If the list-steps command show definition file or not.")

(defvar ecukes-async-timeout 10
  "Timeout for async step definitions.")

(defvar ecukes-patterns nil
  "Run scenarios matching any of the patterns.")

(defvar ecukes-anti-patterns nil
  "Do not run scenarios matching any of the patterns.")

(defvar ecukes-only-failing nil
  "Run only failing scenarios if true.")

(defconst ecukes-failing-scenarios-file ".ecukes-failing-scenarios"
  "File to save list of failing scenarios in.")



(defun ecukes-cli/list-steps ()
  (ecukes-load-step-definitions)
  (ecukes-reporter-print-steps ecukes-cli-with-doc ecukes-cli-with-file))

(defun ecukes-cli/with-doc ()
  (setq ecukes-cli-with-doc t))

(defun ecukes-cli/with-file ()
  (setq ecukes-cli-with-file t))

(defun ecukes-cli/debug ()
  (setq debug-on-error t)
  (setq debug-on-entry t)
  (setq ecukes-verbose t))

(defun ecukes-cli/verbose ()
  (setq ecukes-verbose t))

(defun ecukes-cli/quiet ()
  (setq ecukes-verbose nil))

(defun ecukes-cli/tags (tag-string)
  (-each
   (s-split "," tag-string)
   (lambda (tag)
     (if (s-prefix-p "~" tag)
         (!cons (s-chop-prefix "~@" tag) ecukes-exclude-tags)
       (!cons (s-chop-prefix "@" tag) ecukes-include-tags)))))

(defun ecukes-cli/run (&rest args)
  (ecukes-load)
  (ecukes-reporter-use ecukes-cli-reporter)
  (let ((feature-files))
    (-each
     args
     (lambda (arg)
       (let ((path (f-expand arg (ecukes-project-path))))
         (if (f-dir? path)
             (-each
              (f-files
               path
               (lambda (file)
                 (s-matches? "\.feature$" file))
               'recursive)
              (lambda (feature-file)
                (!cons feature-file feature-files)))
           (!cons path feature-files)))))
    (ecukes-run feature-files)))

(defun ecukes-cli/help ()
  (let ((ecukes-message t))
    (commander-print-usage))
  (ecukes-quit 0))

(defun ecukes-cli/new ()
  (ecukes-new))

(defun ecukes-cli/reporter (reporter)
  (setq ecukes-cli-reporter reporter))

(defun ecukes-cli/list-reporters ()
  (let ((ecukes-message t))
    (princ " ")
    (-each
     ecukes-reporters
     (lambda (reporter)
       (let ((name (car reporter))
             (description (cdr reporter)))
         (message "  %s - %s" name description))))
    (princ "\n")))

(defun ecukes-cli/timeout (timeout)
  (setq ecukes-async-timeout (string-to-number timeout)))

(defun ecukes-cli/patterns (&rest patterns)
  (setq ecukes-patterns patterns))

(defun ecukes-cli/anti-patterns (&rest patterns)
  (setq ecukes-anti-patterns patterns))

(defun ecukes-cli/only-failing ()
  (setq ecukes-only-failing t))

(defun ecukes-cli/error-log (file)
  (ecukes-cli/debug)
  (setq debug-on-signal t)
  (setq debugger 'ecukes-debug)
  (setq ecukes-error-log-file file))



(setq commander-args (s-split " " (getenv "ECUKES_ARGS")))

(commander
 (name "ecukes")
 (description "Cucumber for Emacs")
 (config ".ecukes")

 (default ecukes-cli/run "features")

 (command "list-steps" "Print all available steps defined for this project." ecukes-cli/list-steps)
 (option "--with-doc" "Include docstring when printing steps with 'list-steps'." ecukes-cli/with-doc)
 (option "--with-file" "Include file name when printing steps with 'list-steps'." ecukes-cli/with-file)

 (option "--verbose" "Show package output" ecukes-cli/verbose)
 (option "--quiet" "Do not show package output" ecukes-cli/quiet)

 (option "-h, --help" "Display this help message" ecukes-cli/help)
 (option "--debug" "Run in debug mode (show all output and stacktraces)" ecukes-cli/debug)
 (option "--tags <tag-string>" ("Only execute the scenarios with tags matching TAG_EXPRESSION."
                                "TAG_EXPRESSION Examples: --tags @dev, --tags @dev,~@local"
                                "A tag starting with ~ excluded from the scenarios.") ecukes-cli/tags)

 (option "--script" "Run Ecukes as a script/batch job (default)" ignore)
 (option "--no-win" "Run Ecukes without GUI window" ignore)
 (option "--win" "Run Ecukes with full GUI window" ignore)

 (command "list-reporters" "Show list of reporters" ecukes-cli/list-reporters)
 (option "--reporter <reporter>, -r <reporter>" "Select reporter (default: dot)" ecukes-cli/reporter)

 (option "-t <seconds>, --timeout <seconds>" "How long to wait for async steps before quitting" ecukes-cli/timeout)

 (option "-p <*>, --patterns <*>" "Run scenarios matching a pattern" ecukes-cli/patterns)
 (option "-a <*>, --anti-patterns <*>" "Do not run scenarios matching a pattern" ecukes-cli/anti-patterns)

 (option "-f, --only-failing" "Run only failing scenarios" ecukes-cli/only-failing)
 (option "-l <file>, --error-log <file>" "Log error backtrace to file" ecukes-cli/error-log)

 (command "new" "Create new Ecukes setup for project" ecukes-cli/new))



(ecukes-quit
 (if (> ecukes-stats-steps-failed 0) 1 0))

;;; ecukes-cli.el ends here
