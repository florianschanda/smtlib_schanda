(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9667147519049670290058884347672574222087860107421875p-266 {+ 4353696196452771 -266 (1.65868e-080)}
; Y = 1.2792069069679847803655547977541573345661163330078125p-907 {+ 1257436122180285 -907 (1.18232e-273)}
; 1.9667147519049670290058884347672574222087860107421875p-266 < 1.2792069069679847803655547977541573345661163330078125p-907 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011110101 #b1111011101111010100111100011001111111110000110100011)))
(assert (= y (fp #b0 #b00001110100 #b0100011101111010000110101001011000111110101010111101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
