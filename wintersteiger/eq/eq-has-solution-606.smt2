(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4098836921809290156915039915475063025951385498046875p-367 {+ 1845952043371275 -367 (4.69002e-111)}
; Y = 1.0136152277900880580574494160828180611133575439453125p-685 {+ 61317534802005 -685 (6.31431e-207)}
; 1.4098836921809290156915039915475063025951385498046875p-367 = 1.0136152277900880580574494160828180611133575439453125p-685 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010010000 #b0110100011101110001000110011110100010100101100001011)))
(assert (= y (fp #b0 #b00101010010 #b0000001101111100010010011001111000010110000001010101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
