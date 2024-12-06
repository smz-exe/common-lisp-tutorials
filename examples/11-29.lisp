; FORMAT function: used to format output
(format t "test")

(defun countdown (n)
    (cond ((= n 0) nil)
          (t (format t "~S" n)
             (countdown (- n 1)))))

(countdown 15)

; Q4
(defun drawline (n)
    (cond ((= n 0) nil)
          (t (format t "*")
             (drawline (- n 1)))))

(drawline 10)

(defun drawline2 (n)
    (cond ((zerop n) nil)
          (t (format t "*")
             (drawline2 (- n 1)))))

(drawline2 10)

(defun drawline3 (n)
    (if (= n 0) nil
        (let nil (format t "*")
             (drawline3 (- n 1)))))
(drawline3 10)

;Q5 drawlbox (m * n)
(defun drawbox (m n)
    (cond ((= n 0) nil)
          (t (drawline m)
             (format t "~%")
             (drawbox m (- n 1)))))

(drawbox 10 5)

;Applicative Programming
(funcall #'cons 'a 'b)
; #' is a function quote

; mapcar
(defun square (n) (* n n))
(mapcar #'square '(2 3 4))

(mapcar #'(lambda (n) (* n n)) '(2 3 4))

(mapcar #'+ '(1 2 3 4) '(4 5 6))

