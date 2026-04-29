(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.900527730689310690337379128322936594486236572265625p208 {+ 4055616352369178 208 (7.81832e+062)}
; Y = 1.2388706138343750229324768952210433781147003173828125p797 {+ 1075777607454253 797 (1.0326e+240)}
; 1.900527730689310690337379128322936594486236572265625p208 > 1.2388706138343750229324768952210433781147003173828125p797 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011001111 #b1110011010001000111111000100000001110011101000011010)))
(assert (= y (fp #b0 #b11100011100 #b0011110100100110100111111110001001100100111000101101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
