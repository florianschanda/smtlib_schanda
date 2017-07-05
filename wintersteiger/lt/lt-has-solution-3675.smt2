(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.524808487608623419617970284889452159404754638671875p-398 {- 2363527309235070 -398 (-2.36198e-120)}
; Y = 1.450452266836005588146463196608237922191619873046875p766 {+ 2028656661070830 766 (5.62963e+230)}
; -1.524808487608623419617970284889452159404754638671875p-398 < 1.450452266836005588146463196608237922191619873046875p766 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001110001 #b1000011001011001110110010101101011110001001101111110)))
(assert (= y (fp #b0 #b11011111101 #b0111001101010000110101101111101001111000001111101110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
