(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4303758915239688231935133444494567811489105224609375p-950 {+ 1938240704696591 -950 (1.50298e-286)}
; Y = -1.0601006065800240296681522522703744471073150634765625p107 {- 270669069398537 107 (-1.72011e+032)}
; 1.4303758915239688231935133444494567811489105224609375p-950 > -1.0601006065800240296681522522703744471073150634765625p107 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001001001 #b0110111000101101000111010100101100010101000100001111)))
(assert (= y (fp #b1 #b10001101010 #b0000111101100010110000001101101110111011001000001001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
