(defun tr-fact (n)
    (tr-fact-body n 1))

(defun tr-fact-body (n acc)
    (if (= n 1) acc (tr-fact-body (- n 1) (* n acc))))

(tr-fact 7)