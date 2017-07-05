(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7813380093477946264357569816638715565204620361328125p318 {- 3518833567749133 318 (-9.51229e+095)}
; Y = -1.60635984369548534544946960522793233394622802734375p-239 {- 2730801966119420 -239 (-1.81833e-072)}
; -1.7813380093477946264357569816638715565204620361328125p318 = -1.60635984369548534544946960522793233394622802734375p-239 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100111101 #b1100100000000101110001001000110101000101010000001101)))
(assert (= y (fp #b1 #b01100010000 #b1001101100111010011001100001001001000111100111111100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
