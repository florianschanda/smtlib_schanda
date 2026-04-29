(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2268981589904368600940642863861285150051116943359375p64 {- 1021858464280383 64 (-2.26323e+019)}
; Y = -1.272199414160079644631196060799993574619293212890625p-429 {- 1225877180181802 -429 (-9.17671e-130)}
; -1.2268981589904368600940642863861285150051116943359375p64 = -1.272199414160079644631196060799993574619293212890625p-429 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000111111 #b0011101000010101111111110110110001100010111100111111)))
(assert (= y (fp #b1 #b01001010010 #b0100010110101110110111000101110111001110110100101010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
