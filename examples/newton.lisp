(defun f(x) (- (* x x) 60))
(defun df(x) (* 2 x))
(defun nextX(x) (- x (/ (f x) (df x))))
(defun newton (x)
    (if (< (abs (f x)) 0.00001)
        x
        (newton (nextX x))))
(newton 10.0d0)

; f(x) => (f x) when calling a function