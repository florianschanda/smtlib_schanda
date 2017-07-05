(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.283159951330724357632107057725079357624053955078125p-513 {- 1275239051299298 -513 (-4.78512e-155)}
; Y = 1.1934458112054915357447271162527613341808319091796875p262 {+ 871202483261435 262 (8.84426e+078)}
; -1.283159951330724357632107057725079357624053955078125p-513 > 1.1934458112054915357447271162527613341808319091796875p262 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111111110 #b0100100001111101001010111010101010000000100111100010)))
(assert (= y (fp #b0 #b10100000101 #b0011000110000101101010100010100010101100111111111011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
