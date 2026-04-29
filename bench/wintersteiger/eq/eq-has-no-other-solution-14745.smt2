(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2507537073006691485943520092405378818511962890625p84 {+ 1129294302761064 84 (2.41931e+025)}
; Y = -1.6939354066641845175666958311921916902065277099609375p-285 {- 3125207238872015 -285 (-2.72488e-086)}
; 1.2507537073006691485943520092405378818511962890625p84 = -1.6939354066641845175666958311921916902065277099609375p-285 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001010011 #b0100000000110001011001010001110000110101000001101000)))
(assert (= y (fp #b1 #b01011100010 #b1011000110100101110000000011010100101000101111001111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
