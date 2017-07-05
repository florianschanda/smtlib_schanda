(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5133604153893995825086449258378706872463226318359375p548 {+ 2311969775454463 548 (1.39438e+165)}
; Y = 1.20260487998306420109884129487909376621246337890625p626 {+ 912451261995172 626 (3.34889e+188)}
; 1.5133604153893995825086449258378706872463226318359375p548 > 1.20260487998306420109884129487909376621246337890625p626 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000100011 #b1000001101101011100101101001001100101000100011111111)))
(assert (= y (fp #b0 #b11001110001 #b0011001111011101111010011101010110001001100010100100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
