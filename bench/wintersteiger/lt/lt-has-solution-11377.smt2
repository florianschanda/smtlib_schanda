(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2515167907577293693321962564368732273578643798828125p-99 {- 1132730925133933 -99 (-1.97455e-030)}
; Y = -zero {- 0 -1023 (-0)}
; -1.2515167907577293693321962564368732273578643798828125p-99 < -zero == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110011100 #b0100000001100011011001111000011010110011000001101101)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
