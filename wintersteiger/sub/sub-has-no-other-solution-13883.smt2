(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.375901147145593750309444658341817557811737060546875p-870 {- 1692908266213038 -870 (-1.7478e-262)}
; Y = -1.087903110740990886284862426691688597202301025390625p-792 {- 395880416777834 -792 (-4.1767e-239)}
; -1.375901147145593750309444658341817557811737060546875p-870 - -1.087903110740990886284862426691688597202301025390625p-792 == 1.0879031107409906642402575016603805124759674072265625p-792
; [HW: 1.0879031107409906642402575016603805124759674072265625p-792] 

; mpf : + 395880416777833 -792
; mpfd: + 395880416777833 -792 (4.1767e-239) class: Pos. norm. non-zero
; hwf : + 395880416777833 -792 (4.1767e-239) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010011001 #b0110000000111011000011101011110110000100111010101110)))
(assert (= y (fp #b1 #b00011100111 #b0001011010000000110100010111100111011001011001101010)))
(assert (= r (fp #b0 #b00011100111 #b0001011010000000110100010111100111011001011001101001)))
(assert  (not (= (fp.sub roundTowardNegative x y) r)))
(check-sat)
(exit)
