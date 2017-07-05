(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.661362902841279520771422539837658405303955078125p-40 {+ 2978513722792656 -40 (1.511e-012)}
; Y = 1.47871118514496213691700177150778472423553466796875p777 {+ 2155923515036940 777 (1.17541e+234)}
; 1.661362902841279520771422539837658405303955078125p-40 > 1.47871118514496213691700177150778472423553466796875p777 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111010111 #b1010100101001111000101000100011001111101101011010000)))
(assert (= y (fp #b0 #b11100001000 #b0111101010001100110100001111010001101101010100001100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
