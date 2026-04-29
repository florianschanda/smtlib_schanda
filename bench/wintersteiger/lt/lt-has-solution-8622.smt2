(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.132248608905821907200106579693965613842010498046875p-77 {- 595594785788526 -77 (-7.49259e-024)}
; -zero < -1.132248608905821907200106579693965613842010498046875p-77 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b01110110010 #b0010000111011011000010110111101000110001001001101110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
