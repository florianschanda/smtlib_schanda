(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9323009636174870440328277254593558609485626220703125 270 {- 4198710272344869 270 (-3.66584e+081)}
; -1.9323009636174870440328277254593558609485626220703125 270 I == -1.9323009636174870440328277254593558609485626220703125 270
; [HW: -1.9323009636174870440328277254593558609485626220703125 270] 

; mpf : - 4198710272344869 270
; mpfd: - 4198710272344869 270 (-3.66584e+081) class: Neg. norm. non-zero
; hwf : - 4198710272344869 270 (-3.66584e+081) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100001101 #b1110111010101011010001101010010011000100001100100101)))
(assert (= r (fp #b1 #b10100001101 #b1110111010101011010001101010010011000100001100100101)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
