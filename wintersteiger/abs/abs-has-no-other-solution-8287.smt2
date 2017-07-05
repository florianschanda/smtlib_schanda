(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1134948767834200733517491244128905236721038818359375p-245 {- 511135484790271 -245 (-1.96942e-074)}
; -1.1134948767834200733517491244128905236721038818359375p-245 | == 1.1134948767834200733517491244128905236721038818359375p-245
; [HW: 1.1134948767834200733517491244128905236721038818359375p-245] 

; mpf : + 511135484790271 -245
; mpfd: + 511135484790271 -245 (1.96942e-074) class: Pos. norm. non-zero
; hwf : + 511135484790271 -245 (1.96942e-074) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100001010 #b0001110100001110000000000001000000001100010111111111)))
(assert (= r (fp #b0 #b01100001010 #b0001110100001110000000000001000000001100010111111111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
