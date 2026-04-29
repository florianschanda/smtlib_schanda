(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.592644833972624240914228721521794795989990234375p366 {+ 2669035053442160 366 (2.39385e+110)}
; Y = -1.764214766058627592570928754867054522037506103515625p-584 {- 3441717335652666 -584 (-2.78634e-176)}
; 1.592644833972624240914228721521794795989990234375p366 > -1.764214766058627592570928754867054522037506103515625p-584 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101101101 #b1001011110110111100100100110010000001110010001110000)))
(assert (= y (fp #b1 #b00110110111 #b1100001110100011100101000011001101010111100100111010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
