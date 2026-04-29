(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.81373989609966912439631414599716663360595703125 602 {+ 3664758692850976 602 (3.01046e+181)}
; 1.81373989609966912439631414599716663360595703125 602 I == 1.81373989609966912439631414599716663360595703125 602
; [HW: 1.81373989609966912439631414599716663360595703125 602] 

; mpf : + 3664758692850976 602
; mpfd: + 3664758692850976 602 (3.01046e+181) class: Pos. norm. non-zero
; hwf : + 3664758692850976 602 (3.01046e+181) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001011001 #b1101000001010001010000100000000100110010110100100000)))
(assert (= r (fp #b0 #b11001011001 #b1101000001010001010000100000000100110010110100100000)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
