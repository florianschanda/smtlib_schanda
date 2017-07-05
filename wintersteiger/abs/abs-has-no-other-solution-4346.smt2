(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5014248516409052225384357370785437524318695068359375p-290 {- 2258216775004287 -290 (-7.54753e-088)}
; -1.5014248516409052225384357370785437524318695068359375p-290 | == 1.5014248516409052225384357370785437524318695068359375p-290
; [HW: 1.5014248516409052225384357370785437524318695068359375p-290] 

; mpf : + 2258216775004287 -290
; mpfd: + 2258216775004287 -290 (7.54753e-088) class: Pos. norm. non-zero
; hwf : + 2258216775004287 -290 (7.54753e-088) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011011101 #b1000000001011101011000010000101100110011000001111111)))
(assert (= r (fp #b0 #b01011011101 #b1000000001011101011000010000101100110011000001111111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
