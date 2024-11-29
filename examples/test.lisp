(+ 1 3)
(first '(1 2))
(second '(1 2))
(rest '(1 2))
(rest (list (first '(1 2))))
(listp '(1 2))
(first '(1 2))
(first (list(rest '(1 2))))
(defun fact(n)
    (if (= n 0) 1 (* n (fact (- n 1)))))
(fact 5)
(fact 10)

(defun len (x)
    (if (null x) 0 (+ 1 (len (rest x)))))
(len '(1 2 3 4 5))
;;; (my-append '(a b) '(c d))
;;; a (my-append '(b) '(c d))
;;; b (my-append '() '(c d))

(defun my-append (x y)
    (if (null x) y (cons (first x) (my-append (rest x) y))))
(my-append '(a b) '(c d))
(my-append '(1 5 3) '(4 2 6))

(defun add-up (x)
    (if (null x) 0 (+ (first x) (add-up (rest x)))))
(add-up '(11 12 13 14 15))

(defun laugh (x)
    (if (zerop x) nil (cons 'HA (laugh (- x 1)))))
(laugh 6)

(defun count-down (x)
    (if (zerop x) nil (cons x (count-down (- x 1)))))
(count-down 5)

(defun count-down2 (x)
    (if (equal x 1) '(1) (cons x (count-down2 (- x 1)))))
(count-down 10)

(defun count-odd (x)
    (if (null x) nil (if (= (mod (first x) 2) 0) (count-odd (rest x)) (cons (first x) (count-odd (rest x))))))

(count-odd '(10 5  2 4 6 3 7 8 9))

(append '(a b) '(c d))

; 2024/11/08
; append は第一引数がリスト出ないとエラーになる
(append '1 '(4 5 6))

; consは新たなconsセルを一つ用意し、引数をくっつける。リストの先頭に要素を足すときに適している
(cons 1 '(2 3 4))

; listは任意個を引数をその数だけ新たなconsセルで結合する。
(list 1 2 3 4)

(setf alist '(a b))
(setf nlist '(1 2))
(append alist nlist)

(setf line '(1 2 3))
(cons (last line) line)
(list (last line) line)

; 1
(defun rev (x)
    (if (null x) nil (append (rev (rest x)) (list (first x)))))

(rev '(1 2 3 4))

(defun rm (x y)
    (cond ((null y) nil)
          ((equal x (first y)) (rm ()))))

(defun mem (x y)
    (if (null y) nill (if (equal (x (first y))) y ())))


; 4
(defun mem (x y)
    (cond ((null y) nil)
          ((equal x (first y)) y)
          (t (mem x (rest y)))))

; 5
(defun berforeep (x y l)
    (mem y (mem x l)))


; 7

(defun rev(x)
    (if (null x) nil (append rev(rest x) (first x))))

(rest '(1 2 3 4))