
;; read-stdin.scm

(import posix)
;; let me know if STDIN is coming from a terminal or a pipe/file
(if (terminal-port? (current-input-port))
   (fprintf (current-error-port) "~A~%" "stdin is a terminal") ;; prints to stderr
   (fprintf (current-error-port) "~A~%" "stdin is a pipe or file"))
;; read from STDIN
(do ((c (read-char) (read-char)))
   ((eof-object? c))
   (printf "~C" c))
(newline)

