(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.498347559057354505540615718928165733814239501953125p-918 {- 2244357881271698 -918 (-6.76202e-277)}
; -zero > -1.498347559057354505540615718928165733814239501953125p-918 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b00001101001 #b0111111110010011101101001010010000110001010110010010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
