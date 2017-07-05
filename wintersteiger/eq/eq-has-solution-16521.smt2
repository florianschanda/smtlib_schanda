(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.47697339916800896020276923081837594509124755859375p-674 {- 2148097222758684 -674 (-1.88432e-203)}
; Y = -1.79495032819729516404549940489232540130615234375p-953 {- 3580138001847392 -953 (-2.35758e-287)}
; -1.47697339916800896020276923081837594509124755859375p-674 = -1.79495032819729516404549940489232540130615234375p-953 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101011101 #b0111101000011010111011011011111001111101000100011100)))
(assert (= y (fp #b1 #b00001000110 #b1100101110000001110111010101110110001101010001100000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
