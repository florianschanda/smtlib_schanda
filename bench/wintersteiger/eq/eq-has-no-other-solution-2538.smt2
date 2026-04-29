(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6821949355992098507073251312249340116977691650390625p-467 {+ 3072332857758641 -467 (4.41437e-141)}
; Y = -1.1693044150104123790612220545881427824497222900390625p41 {- 762479300353073 41 (-2.57133e+012)}
; 1.6821949355992098507073251312249340116977691650390625p-467 = -1.1693044150104123790612220545881427824497222900390625p41 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000101100 #b1010111010100100010100111100100111100101001110110001)))
(assert (= y (fp #b1 #b10000101000 #b0010101101010111100010001011110110001001110000110001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
