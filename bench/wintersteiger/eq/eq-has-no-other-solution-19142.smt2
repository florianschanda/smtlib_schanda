(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.48864431177559453089997987262904644012451171875p915 {- 2200658340429280 915 (-4.12322e+275)}
; Y = 1.193397711254275517234191283932887017726898193359375p-406 {+ 870985860339062 -406 (7.22116e-123)}
; -1.48864431177559453089997987262904644012451171875p915 = 1.193397711254275517234191283932887017726898193359375p-406 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110010010 #b0111110100010111110010110010101001110011110111100000)))
(assert (= y (fp #b0 #b01001101001 #b0011000110000010100000110010110011110101010101110110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
