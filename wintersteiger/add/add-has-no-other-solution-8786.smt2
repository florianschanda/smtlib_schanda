(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.764305730991413856401095472392626106739044189453125p-269 {+ 3442127005290066 -269 (1.85997e-081)}
; Y = -1.7168921080102601539607576341950334608554840087890625p-223 {- 3228595030499857 -223 (-1.27366e-067)}
; 1.764305730991413856401095472392626106739044189453125p-269 + -1.7168921080102601539607576341950334608554840087890625p-223 == -1.7168921080102352849650060306885279715061187744140625p-223
; [HW: -1.7168921080102352849650060306885279715061187744140625p-223] 

; mpf : - 3228595030499745 -223
; mpfd: - 3228595030499745 -223 (-1.27366e-067) class: Neg. norm. non-zero
; hwf : - 3228595030499745 -223 (-1.27366e-067) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011110010 #b1100001110101001100010100101011011000000111001010010)))
(assert (= y (fp #b1 #b01100100000 #b1011011110000110001111011011111010101010001000010001)))
(assert (= r (fp #b1 #b01100100000 #b1011011110000110001111011011111010101010000110100001)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
