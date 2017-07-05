(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.876292409019964413374736977857537567615509033203125p-914 {- 3946470166729906 -914 (-1.35483e-275)}
; Y = 1.110198997762583683623915931093506515026092529296875p-632 {+ 496292165260174 -632 (6.22936e-191)}
; -1.876292409019964413374736977857537567615509033203125p-914 < 1.110198997762583683623915931093506515026092529296875p-632 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001101101 #b1110000001010100101100110000011001111001010010110010)))
(assert (= y (fp #b0 #b00110000111 #b0001110000110110000000000110001101110001001110001110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
