(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1967846535136554830813793159904889762401580810546875 222 {+ 886239292236331 222 (8.06631e+066)}
; 1.1967846535136554830813793159904889762401580810546875 222 I == 1.1967846535136554830813793159904889762401580810546875 222
; [HW: 1.1967846535136554830813793159904889762401580810546875 222] 

; mpf : + 886239292236331 222
; mpfd: + 886239292236331 222 (8.06631e+066) class: Pos. norm. non-zero
; hwf : + 886239292236331 222 (8.06631e+066) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011011101 #b0011001001100000011110101010001100110010001000101011)))
(assert (= r (fp #b0 #b10011011101 #b0011001001100000011110101010001100110010001000101011)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
