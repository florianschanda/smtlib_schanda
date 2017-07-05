(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.09928023983880773783994300174526870250701904296875p137 {+ 447118451143308 137 (1.91522e+041)}
; Y = -1.81595852379527311626361552043817937374114990234375p-933 {- 3674750503714172 -933 (-2.50104e-281)}
; 1.09928023983880773783994300174526870250701904296875p137 < -1.81595852379527311626361552043817937374114990234375p-933 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010001000 #b0001100101101010011011100000011100111111001010001100)))
(assert (= y (fp #b1 #b00001011010 #b1101000011100010101010000110011010010111110101111100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
