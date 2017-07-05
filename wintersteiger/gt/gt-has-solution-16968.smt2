(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.356815511189485956577982506132684648036956787109375p-37 {- 1606954203232982 -37 (-9.87213e-012)}
; Y = 1.8749778648448740536736067952006123960018157958984375p-729 {+ 3940549986072807 -729 (6.63941e-220)}
; -1.356815511189485956577982506132684648036956787109375p-37 > 1.8749778648448740536736067952006123960018157958984375p-729 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111011010 #b0101101101011000010000101110011101000011101011010110)))
(assert (= y (fp #b0 #b00100100110 #b1101111111111110100011001010001000111011100011100111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
