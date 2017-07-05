(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.679180649284593318526503935572691261768341064453125p-154 {- 3058757719035346 -154 (-7.35323e-047)}
; Y = -1.8255194442715383384978622416383586823940277099609375p928 {- 3717809061608399 928 (-4.14212e+279)}
; -1.679180649284593318526503935572691261768341064453125p-154 = -1.8255194442715383384978622416383586823940277099609375p928 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101100101 #b1010110111011110110010000111010011000000110111010010)))
(assert (= y (fp #b1 #b11110011111 #b1101001101010101001111100000011101011011101111001111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
