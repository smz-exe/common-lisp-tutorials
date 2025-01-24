(defun numbrep (x)
  (numberp x))
(remove-if #'numbrep '(1 2 3 a b c 4 5 6))

(remove-if #'(lambda (x) (not (plusp x))) '(2 0 4 -4 -8 0 -9))

(remove-if-not #'(lambda (x) (plusp x)) '(2 0 4 -4 -8 0 -9))

(defun pick (x)
  (remove-if-not #'(lambda (e) (and (> e 1) (< e 5))) x))

(pick '(1 2 3 4 5 6 7 8 9 0))

(defun count-the (x)
  (length (remove-if-not #'(lambda (e) (equal e 'the)) x)))

(count-the '(the the a the a the a the))

(defun my-intersection (x y)
  (remove-if-not #'(lambda (e) (member e y)) x))
(my-intersection '(a b) '(a b c d))

(find-if #'oddp '(2 4 6 7 8))

(find-if #'(lambda (x) (> x 3)) '(2 4 6))