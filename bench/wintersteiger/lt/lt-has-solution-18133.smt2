(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0761215986806058619862369596376083791255950927734375p734 {+ 342821203452823 734 (9.72474e+220)}
; Y = 1.1151290905077828607971923702280037105083465576171875p-617 {+ 518495329110355 -617 (2.0503e-186)}
; 1.0761215986806058619862369596376083791255950927734375p734 < 1.1151290905077828607971923702280037105083465576171875p-617 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011011101 #b0001001101111100101101001000000011011010001110010111)))
(assert (= y (fp #b0 #b00110010110 #b0001110101111001000110011001111010001100100101010011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
