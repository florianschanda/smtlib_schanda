(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.32188880302427147483967928565107285976409912109375p818 {+ 1449658293354844 818 (2.31064e+246)}
; Y = 1.6784792457804720289260558274690993130207061767578125p832 {+ 3055598878475549 832 (4.80698e+250)}
; Z = 1.34903474405863033069863377022556960582733154296875p-21 {+ 1571912743281804 -21 (6.4327e-007)}
; 1.32188880302427147483967928565107285976409912109375p818 x 1.6784792457804720289260558274690993130207061767578125p832 1.34903474405863033069863377022556960582733154296875p-21 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100110001 #b0101001001100111010011011111100111110000000101011100)))
(assert (= y (fp #b0 #b11100111111 #b1010110110110000110100001101101110100100010100011101)))
(assert (= z (fp #b0 #b01111101010 #b0101100101011010010101110100101011100110010010001100)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
