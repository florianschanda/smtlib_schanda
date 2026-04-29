(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.325726097700989924987879930995404720306396484375p140 {+ 1466939932231024 140 (1.84779e+042)}
; Y = -1.32730058992189459132760021020658314228057861328125p-913 {- 1474030814810388 -913 (-1.91683e-275)}
; 1.325726097700989924987879930995404720306396484375p140 = -1.32730058992189459132760021020658314228057861328125p-913 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010001011 #b0101001101100010110010010001100100010100010101110000)))
(assert (= y (fp #b1 #b00001101110 #b0101001111001001111110001011000110101101000100010100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
