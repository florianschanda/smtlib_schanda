(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1316755424177158406706666937679983675479888916015625p-244 {- 593013923766233 -244 (-4.00316e-074)}
; Y = -1.7391570267194180754444232661626301705837249755859375p-680 {- 3328867310101855 -680 (-3.4669e-205)}
; -1.1316755424177158406706666937679983675479888916015625p-244 = -1.7391570267194180754444232661626301705837249755859375p-680 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100001011 #b0010000110110101011111010000010001011101111111011001)))
(assert (= y (fp #b1 #b00101010111 #b1011110100111001011001010001100001011110010101011111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
