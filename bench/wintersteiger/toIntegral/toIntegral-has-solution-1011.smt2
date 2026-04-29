(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.010941626162274786793204839341342449188232421875 152 {- 49276703507248 152 (-5.77146e+045)}
; -1.010941626162274786793204839341342449188232421875 152 I == -1.010941626162274786793204839341342449188232421875 152
; [HW: -1.010941626162274786793204839341342449188232421875 152] 

; mpf : - 49276703507248 152
; mpfd: - 49276703507248 152 (-5.77146e+045) class: Neg. norm. non-zero
; hwf : - 49276703507248 152 (-5.77146e+045) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010010111 #b0000001011001101000100100000011010001000001100110000)))
(assert (= r (fp #b1 #b10010010111 #b0000001011001101000100100000011010001000001100110000)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
