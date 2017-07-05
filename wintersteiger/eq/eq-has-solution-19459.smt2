(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8582011892997229995927455092896707355976104736328125p510 {- 3864994556339149 510 (-6.2286e+153)}
; Y = 1.6487289092820731628563635240425355732440948486328125p845 {+ 2921615274107213 845 (3.86808e+254)}
; -1.8582011892997229995927455092896707355976104736328125p510 = 1.6487289092820731628563635240425355732440948486328125p845 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111111101 #b1101101110110011000100101011100101101110001111001101)))
(assert (= y (fp #b0 #b11101001100 #b1010011000010011000110010000100101010110000101001101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
