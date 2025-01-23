(first '(1 2 3 4))

(first '((1 2) (3 4)))

(first '(((1 2) (3 4)) ((5 6) (7 8))))

(car '(1 2 3 4))

(car '((1 2) (3 4)))

(car '(((1 2) (3 4)) ((5 6) (7 8))))

(rest '((1 2) (3 4) 5))

(cdr '((1 2) (3 4) 5))

(cons '(1) '(2 3 4))

(list '(1) '(2 3 4) '(5 6 7))

(second '(1 2 3 4))

(first (rest '(1 2 3 4)))

(listp '(1 2 3 4))

(consp '(1 2 3 4))

(listp nil)

(consp nil)

(atom nil)

(null '())
(null nil)
(cons 1 2)
(cons 1 nil)
(cons '(1) 2)

(car '(1 2))
(cdr '(1 2))
(car '(1 . 2))
(cdr '(1 . 2))

(defun average (x y) (/ (+ x y) 2))
(average 4 10)