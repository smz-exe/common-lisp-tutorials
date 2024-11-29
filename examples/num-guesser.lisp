(defun number-guessing-game ()
    (format t "input an integer between 1 and 100:~%")
    (readloop (+ 1 (random 100)) 1 ))

(defun readloop (ans n)
    (format t "input:~%")
    (let ((guess (read)))
        (cond
            ((= guess ans)
                (format t "Correct! You guessed it in ~S tries.~%" n))
            ((> ans guess)
                (format t "Too small.~%")
                (readloop ans (+ n 1)))
            (t
                (format t "Too large.~%")
                (readloop ans (+ n 1))))))

(number-guessing-game)