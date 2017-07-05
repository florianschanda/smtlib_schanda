(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.29628878625898646959058169159106910228729248046875p263 {- 1334366067390028 263 (-1.92128e+079)}
; Y = 1.1771945898962330456782865439890883862972259521484375p-773 {+ 798013489028743 -773 (2.36953e-233)}
; -1.29628878625898646959058169159106910228729248046875p263 < 1.1771945898962330456782865439890883862972259521484375p-773 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100000110 #b0100101111011001100101001111011100100111011001001100)))
(assert (= y (fp #b0 #b00011111010 #b0010110101011100100111111110100010100001111010000111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
