(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9491410375887048278542579282657243311405181884765625p-962 {+ 4274551223206537 -962 (5.0002e-290)}
; Y = -1.35556882835203129644696673494763672351837158203125p-187 {- 1601339642870772 -187 (-6.91055e-057)}
; 1.9491410375887048278542579282657243311405181884765625p-962 = -1.35556882835203129644696673494763672351837158203125p-187 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000111101 #b1111001011111010111010000011001110111100001010001001)))
(assert (= y (fp #b1 #b01101000100 #b0101101100000110100011110000100100111111101111110100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
