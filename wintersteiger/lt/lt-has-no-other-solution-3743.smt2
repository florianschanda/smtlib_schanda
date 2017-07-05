(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3808490415310525900594029735657386481761932373046875p-620 {+ 1715191601523659 -620 (3.17358e-187)}
; Y = 1.65813011490908568390523214475251734256744384765625p596 {+ 2963954540265860 596 (4.30027e+179)}
; 1.3808490415310525900594029735657386481761932373046875p-620 < 1.65813011490908568390523214475251734256744384765625p596 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110010011 #b0110000101111111010100101010001000010110101111001011)))
(assert (= y (fp #b0 #b11001010011 #b1010100001111011001101110001100000001100000110000100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
