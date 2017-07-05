(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3426916555354935223220991247217170894145965576171875p-680 {- 1543346012172627 -680 (-2.67657e-205)}
; Y = 1.368199726690395134909294938552193343639373779296875p35 {+ 1658224151920782 35 (4.7011e+010)}
; -1.3426916555354935223220991247217170894145965576171875p-680 < 1.368199726690395134909294938552193343639373779296875p35 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101010111 #b0101011110111010101000111110110100100011000101010011)))
(assert (= y (fp #b0 #b10000100010 #b0101111001000010010101100101100010001000000010001110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
