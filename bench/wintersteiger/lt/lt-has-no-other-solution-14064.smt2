(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.836684549022131296425186519627459347248077392578125p29 {+ 3768092223202722 29 (9.86063e+008)}
; Y = -1.984218284395179665580144501291215419769287109375p494 {- 4432525098853360 494 (-1.01486e+149)}
; 1.836684549022131296425186519627459347248077392578125p29 < -1.984218284395179665580144501291215419769287109375p494 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000011100 #b1101011000110000111101010110011100011110010110100010)))
(assert (= y (fp #b1 #b10111101101 #b1111101111110101101110101011111110011010001111110000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
