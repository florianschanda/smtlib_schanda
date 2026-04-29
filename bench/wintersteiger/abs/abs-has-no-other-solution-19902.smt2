(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.499674338168798914949775280547328293323516845703125p-688 {+ 2250333163183602 -688 (1.16778e-207)}
; 1.499674338168798914949775280547328293323516845703125p-688 | == 1.499674338168798914949775280547328293323516845703125p-688
; [HW: 1.499674338168798914949775280547328293323516845703125p-688] 

; mpf : + 2250333163183602 -688
; mpfd: + 2250333163183602 -688 (1.16778e-207) class: Pos. norm. non-zero
; hwf : + 2250333163183602 -688 (1.16778e-207) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101001111 #b0111111111101010101010000100110100010101110111110010)))
(assert (= r (fp #b0 #b00101001111 #b0111111111101010101010000100110100010101110111110010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
