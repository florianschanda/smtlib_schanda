(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.379455141566520826046371439588256180286407470703125p-735 {+ 1708914034162802 -735 (7.63239e-222)}
; Y = -1.6105727586037190679491004630108363926410675048828125p-184 {- 2749775248130285 -184 (-6.56842e-056)}
; 1.379455141566520826046371439588256180286407470703125p-735 > -1.6105727586037190679491004630108363926410675048828125p-184 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100100000 #b0110000100100011111110001101111101010011110001110010)))
(assert (= y (fp #b1 #b01101000111 #b1001110001001110011111110000111000001000000011101101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
