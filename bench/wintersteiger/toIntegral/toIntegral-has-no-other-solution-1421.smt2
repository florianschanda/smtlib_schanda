(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7049411852027216429661393704009242355823516845703125 996 {- 3174772858997093 996 (-1.14179e+300)}
; -1.7049411852027216429661393704009242355823516845703125 996 I == -1.7049411852027216429661393704009242355823516845703125 996
; [HW: -1.7049411852027216429661393704009242355823516845703125 996] 

; mpf : - 3174772858997093 996
; mpfd: - 3174772858997093 996 (-1.14179e+300) class: Neg. norm. non-zero
; hwf : - 3174772858997093 996 (-1.14179e+300) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111100011 #b1011010001110111000001101000100000001100100101100101)))
(assert (= r (fp #b1 #b11111100011 #b1011010001110111000001101000100000001100100101100101)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
