(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.0640217382085392916479804625851102173328399658203125p-362 {- 288328276339589 -362 (-1.13264e-109)}
; -zero = -1.0640217382085392916479804625851102173328399658203125p-362 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b01010010101 #b0001000001100011101110101000011111010110101110000101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
