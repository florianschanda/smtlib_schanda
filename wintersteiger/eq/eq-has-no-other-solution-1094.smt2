(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.804745579178816061727275155135430395603179931640625p212 {+ 3624251890517770 212 (1.18789e+064)}
; Y = 1.5724317213084619826446441948064602911472320556640625p-988 {+ 2578003286779841 -988 (6.01085e-298)}
; 1.804745579178816061727275155135430395603179931640625p212 = 1.5724317213084619826446441948064602911472320556640625p-988 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011010011 #b1100111000000011110011100110100000101100011100001010)))
(assert (= y (fp #b0 #b00000100011 #b1001001010001010111000101010001000110110011111000001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
