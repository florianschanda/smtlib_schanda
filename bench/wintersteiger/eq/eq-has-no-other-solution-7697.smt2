(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6991887858641181452412638464011251926422119140625p-682 {+ 3148866355479272 -682 (8.46807e-206)}
; Y = 1.647168982996064290347248970647342503070831298828125p533 {+ 2914589990666818 533 (4.63154e+160)}
; 1.6991887858641181452412638464011251926422119140625p-682 = 1.647168982996064290347248970647342503070831298828125p533 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101010101 #b1011001011111110000010010100100100000100001011101000)))
(assert (= y (fp #b0 #b11000010100 #b1010010110101100110111011101000011110100001001000010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
