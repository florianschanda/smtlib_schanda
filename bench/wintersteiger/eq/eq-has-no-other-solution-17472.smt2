(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.151121179950605810660135830403305590152740478515625p133 {- 680589289713338 133 (-1.25346e+040)}
; Y = 1.1316650194600814671730404370464384555816650390625p82 {+ 592966532578152 82 (5.4724e+024)}
; -1.151121179950605810660135830403305590152740478515625p133 = 1.1316650194600814671730404370464384555816650390625p82 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010000100 #b0010011010101111111000001010110110011110111010111010)))
(assert (= y (fp #b0 #b10001010001 #b0010000110110100110011000111100010011011101101101000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
