(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.258540208168241303354761839727871119976043701171875p643 {+ 1164361585166782 643 (4.59361e+193)}
; Y = -1.4780494199619003126144889392890036106109619140625p-728 {- 2152943189605096 -728 (-1.04677e-219)}
; 1.258540208168241303354761839727871119976043701171875p643 < -1.4780494199619003126144889392890036106109619140625p-728 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010000010 #b0100001000101111101100001110101011001000100110111110)))
(assert (= y (fp #b1 #b00100100111 #b0111101001100001011100100110000010011011101011101000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
