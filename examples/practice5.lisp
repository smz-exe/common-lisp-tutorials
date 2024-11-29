(defun add1 (x)
    (mapcar #'(lambda (n) (+ 1 n)) x))

(add1 '(1 2 3 4 5))

(defun addtwo (n) (+ 2 n))
(defun add2 (x)
    (mapcar #' addtwo x))

(add2 '(1 2 3 4 5))

(defun greater-than-five (x)
    (mapcar #'(lambda (n) (> n 5)) x))

(greater-than-five '(1 2 3 4 5 6 7 8 9 10))

(defun flip (x)
    (mapcar #'(lambda (n) (if (string= n "ON") "OFF" "ON") ) x))

(flip '("ON" "OFF"))
