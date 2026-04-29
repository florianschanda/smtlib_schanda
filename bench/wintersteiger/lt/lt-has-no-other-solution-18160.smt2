(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.330036478340327565916823004954494535923004150390625p965 {- 1486352160872170 965 (-4.14772e+290)}
; Y = -1.43171538790907693083909180131740868091583251953125p-236 {- 1944273260117428 -236 (-1.29652e-071)}
; -1.330036478340327565916823004954494535923004150390625p965 < -1.43171538790907693083909180131740868091583251953125p-236 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111000100 #b0101010001111101010001010100100011110101011011101010)))
(assert (= y (fp #b1 #b01100010011 #b0110111010000100111001100101000000111111110110110100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
