(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8442249142638562631191234686411917209625244140625p-739 {+ 3802051009295592 -739 (6.37745e-223)}
; Y = 1.510935954728503727295674252673052251338958740234375p88 {+ 2301050975325478 88 (4.67612e+026)}
; 1.8442249142638562631191234686411917209625244140625p-739 = 1.510935954728503727295674252673052251338958740234375p88 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100011100 #b1101100000011111000111111011110100111011010011101000)))
(assert (= y (fp #b0 #b10001010111 #b1000001011001100101100101101111111101000110100100110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
