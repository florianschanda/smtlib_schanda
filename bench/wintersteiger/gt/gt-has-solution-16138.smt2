(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7340672667434759990356951675494201481342315673828125p844 {- 3305945068970797 844 (-2.03415e+254)}
; Y = 1.2428540410251007752862051347619853913784027099609375p174 {+ 1093717368666063 174 (2.97604e+052)}
; -1.7340672667434759990356951675494201481342315673828125p844 > 1.2428540410251007752862051347619853913784027099609375p174 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101001011 #b1011101111101011110101010001011110111010001100101101)))
(assert (= y (fp #b0 #b10010101101 #b0011111000101011101011101011001111100111011111001111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
