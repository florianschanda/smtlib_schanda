(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2030693765222884028531780131743289530277252197265625p636 {- 914543168436137 636 (-3.43058e+191)}
; Y = -1.75969107379024247705956440768204629421234130859375p-795 {- 3421344436838428 -795 (-8.44481e-240)}
; -1.2030693765222884028531780131743289530277252197265625p636 < -1.75969107379024247705956440768204629421234130859375p-795 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001111011 #b0011001111111100010110101100101011111011011110101001)))
(assert (= y (fp #b1 #b00011100100 #b1100001001111011000111010011110011111110000000011100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
