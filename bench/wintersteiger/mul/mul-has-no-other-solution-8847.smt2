(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.042164489112410219462390159606002271175384521484375p-848 {- 189891977454918 -848 (-5.55265e-256)}
; Y = 1.8964015471165875936776501475833356380462646484375p-1010 {+ 4037033673568600 -1010 (1.72836e-304)}
; -1.042164489112410219462390159606002271175384521484375p-848 * 1.8964015471165875936776501475833356380462646484375p-1010 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010101111 #b0000101011001011010010101011110111001010010101000110)))
(assert (= y (fp #b0 #b00000001101 #b1110010101111010100100100110000011110011000101011000)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
