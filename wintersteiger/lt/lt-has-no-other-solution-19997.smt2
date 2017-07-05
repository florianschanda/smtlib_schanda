(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4558925927379557929697284635039977729320526123046875p-543 {- 2053157710775627 -543 (-5.0564e-164)}
; Y = 1.4678393781058769462788404780440032482147216796875p-213 {+ 2106961248906872 -213 (1.11504e-064)}
; -1.4558925927379557929697284635039977729320526123046875p-543 < 1.4678393781058769462788404780440032482147216796875p-213 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111100000 #b0111010010110101011000001000000001001100010101001011)))
(assert (= y (fp #b0 #b01100101010 #b0111011111000100010100100100110010111110111001111000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
